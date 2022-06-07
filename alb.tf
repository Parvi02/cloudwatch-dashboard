resource "aws_cloudwatch_dashboard" "mains" {
  dashboard_name = "my-dashboard"

  dashboard_body = <<EOF
{
  "widgets": [
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "view": "bar",
        "metrics": [
          [ "AWS/ApplicationELB", "ConsumedLCUs", "LoadBalancer", "var.alb_cw_grp_name" ],
          [ ".", "HTTPCode_Target_4XX_Count", ".", "." ],
          [ ".", "NewConnectionCount", ".", "." ],
          [ ".", "ActiveConnectionCount", ".", "." ],
          [ ".", "HTTPCode_Target_2XX_Count", ".", "." ],
          [ ".", "ProcessedBytes", ".", "." ],
          [ ".", "TargetResponseTime", ".", "." ],
          [ ".", "RequestCount", ".", "." ],
          [ "...", "app/carbon-alb/ae2655fe2db4d520" ],
          [ ".", "ConsumedLCUs", ".", "." ]
        ],
        "region": "us-east-1",
        "liveData": false,
        "setPeriodToTimeRange": true,
        "sparkline": false
      }



    }
    
  ]
}
EOF
}