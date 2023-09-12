引入VRFCoordinatorV2Interface接口，调用requestRandomWords方法
继承VRFConsumerBaseV2，重写fulfillRandomWords方法
实现checkUpkeep和performUpkeep,
This is a func that the chainLink Automation nodes call to see if it's time to perform an upkeep
引入HelperConfig fork不同链的NetworkConfig,然后实现DeployRaffle中run方法部署Raffle

