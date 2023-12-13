﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebLab
{
    public class Post
    {
        public int Id { get; set; }
        public int CreatorId { get; set; }
        public string Title { get; set; }
        public string Text { get; set; }
        public DateTime PublishTime { get; set; }
    }
}