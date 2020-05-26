/* 
 * eToro Rates API
 *
 * The Rates API provides eToro live and historical rates
 *
 * OpenAPI spec version: 1.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */
using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using NUnit.Framework;

using IO.Swagger.Client;
using IO.Swagger.Api;
using IO.Swagger.Model;

namespace IO.Swagger.Test
{
    /// <summary>
    ///  Class for testing DefaultApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class DefaultApiTests
    {
        private DefaultApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new DefaultApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of DefaultApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' DefaultApi
            //Assert.IsInstanceOfType(typeof(DefaultApi), instance, "instance is a DefaultApi");
        }

        /// <summary>
        /// Test GetCandles
        /// </summary>
        [Test]
        public void GetCandlesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //decimal? candlePeriodId = null;
            //decimal? instrumentID = null;
            //decimal? top = null;
            //string order = null;
            //instance.GetCandles(candlePeriodId, instrumentID, top, order);
            
        }
        /// <summary>
        /// Test GetClosingRate
        /// </summary>
        [Test]
        public void GetClosingRateTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string instrumentIds = null;
            //instance.GetClosingRate(instrumentIds);
            
        }
        /// <summary>
        /// Test GetLiveRates
        /// </summary>
        [Test]
        public void GetLiveRatesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string instrumentIds = null;
            //instance.GetLiveRates(instrumentIds);
            
        }
    }

}