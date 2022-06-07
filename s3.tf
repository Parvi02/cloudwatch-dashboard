resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "my-dashboard2"

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
        
       "sparkline": true,
        "view": "singleValue",
        "stacked": true,
         "metrics": [
             [ "AWS/S3", "NumberOfObjects", "StorageType", "var.storage_type", "BucketName", "var.bucket", { "period": 86400 } ]
    ],
     "region": "us-west-2",
     "period": 300,
     "stat": "Average",
     "unit": "count"
        

}

    }
    
  ]
}
EOF
}