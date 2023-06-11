variable REGION {
  default = "ap-south-1"
}

variable ZONE1 {
  default = "ap-south-1a"
}

variable AMIS {
  type = map
  default {
    ap-south-1 = "ami-049a62eb90480f276"
    us-east-1 = "ami-04a0ae173da5807d3"
  }
}