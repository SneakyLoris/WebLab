﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebLab
{
    public class User
    {
        public int Id { get; set; }
        public string Login { get; set; }
        internal string Password { get; set; }
        public string Name { get; set; }
        public int Age { get; set; }
    }
}