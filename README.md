引入VRFCoordinatorV2Interface接口，调用requestRandomWords方法
继承VRFConsumerBaseV2，重写fulfillRandomWords方法
实现checkUpkeep和performUpkeep,
This is a func that the chainLink Automation nodes call to see if it's time to perform an upkeep
引入HelperConfig fork不同链的NetworkConfig,然后实现DeployRaffle中run方法部署Raffle
引入Interaction脚本在后端自动化create&fund Subscription && Add Consumer (mock Link合约 使用了solmate中ERC20合约 )
引入vm cheatcode类监听和获取事件
fuzz test
hoax cheatcode模拟环境
