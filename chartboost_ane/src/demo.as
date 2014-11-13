package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	import so.cuo.platform.chartboost.CBLocation;
	import so.cuo.platform.chartboost.Chartboost;
	import so.cuo.platform.chartboost.ChartboostEvent;

	public class demo extends Sprite
	{
		public var appid:String="your appid";
		public var sign:String="your appid";
		public var fullScreenButton:TextField=new TextField();
		public var moreAppButton:TextField=new TextField();
		private var format:TextFormat=new TextFormat(null, 38);
		private var chartboost:Chartboost;

		public function demo()
		{
			super();
			stage.align=StageAlign.TOP_LEFT;
			stage.scaleMode=StageScaleMode.NO_SCALE;
			initUI();
			chartboost= Chartboost.getInstance();
			if (chartboost.supportDevice)
			{
				chartboost.setInterstitialKeys(this.appid, this.sign);
				chartboost.addEventListener(ChartboostEvent.onInterstitialReceive, onAdReceived);
			}
		}

		private function initUI():void
		{
			this.fullScreenButton.x=240;
			this.fullScreenButton.defaultTextFormat=this.moreAppButton.defaultTextFormat=this.format;
			this.fullScreenButton.text="full";
			this.moreAppButton.text="more app";
			this.addChild(this.fullScreenButton);
			this.addChild(this.moreAppButton);
			this.fullScreenButton.addEventListener(MouseEvent.CLICK, click);
			this.moreAppButton.addEventListener(MouseEvent.CLICK, click);
		}

		protected function click(event:MouseEvent):void
		{
			if (!chartboost.supportDevice)
			{
				trace("not support device");
				return
			}
			else
			{
				if (event.currentTarget == this.fullScreenButton)
				{
					if(chartboost.isInterstitialReady()){
						chartboost.showInterstitial();
					}else{
						chartboost.cacheInterstitial();
					}
				}
				if (event.currentTarget == this.moreAppButton)
				{
					if(chartboost.isMoreAppReady()){
						chartboost.showMoreApp();
					}else{
						chartboost.cacheMoreApp();
					}
				}
			}
		}

		protected function onAdReceived(event:ChartboostEvent):void
		{
			chartboost.showInterstitial();
		}
	}
}
