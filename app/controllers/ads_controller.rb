class AdsController < ApplicationController
  require 'httparty'
  skip_before_action :verify_authenticity_token
  
  def index
  end

  def fetch_ad_name(ad_id, access_token)
    url = "https://graph.facebook.com/v22.0/#{ad_id}?fields=name&access_token=#{access_token}"
    response = HTTParty.get(url)
    json_response = JSON.parse(response.body)
    json_response["name"] || "Unknown Ad Name"
  end

  def fetch_metrics
    ad_id = params[:ad_id]
    access_token = params[:access_token]
    response = fetch_facebook_ad_insights(ad_id, access_token)
    
    if response
      ad_name = fetch_ad_name(ad_id, access_token)

      insight = AdInsight.create(
        ad_id: ad_id,
        ad_name: ad_name,
        impressions: response["impressions"].to_i,
        clicks: response["clicks"].to_i,
        conversions: response["actions"]&.find { |action| action["action_type"] == "onsite_web_lead" }&.dig("value")&.to_i || 0,
        cost_per_result: response["cost_per_action_type"].find { |action| action["action_type"] == "onsite_web_lead" }&.dig("value")&.to_f || 0.0,
        frequency: response["frequency"].to_f,
        ad_spend: response["spend"].to_f
      )
      render json: insight
    else
      render json: { error: 'Failed to fetch data' }, status: :unprocessable_entity
    end
  end

  private

  def fetch_facebook_ad_insights(ad_id, access_token)
    url = "https://graph.facebook.com/v22.0/#{ad_id}/insights?fields=impressions,clicks,actions,frequency,spend,cost_per_action_type&access_token=#{access_token}"
    response = HTTParty.get(url)
    puts "API Response: #{response.body}"
    response.parsed_response.dig("data", 0) if response.code == 200
  end
end
