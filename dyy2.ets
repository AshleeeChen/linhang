import router from '@ohos.router'

@Entry
@Component
struct Dyy2 {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Column() {
        Row() {
          Image($r('app.media.jiantou'))
            .width("15%")
            .height("60%")
            .objectFit(ImageFit.Contain)
            .onClick(() => {
              router.pushUrl({
                url: 'pages/fourpage'
              });
            })
          Text("自定义场景")
            .width("67%")
            .height("100%")
            .fontColor(Color.Black)
            .textAlign(TextAlign.Center)
            .fontSize("19fp")
            .fontWeight(FontWeight.Bold)
          Image($r('app.media.gengduo'))
            .width("20%")
            .height("70%")
            .objectFit(ImageFit.Contain)
        }
        .width("100%")
        .height("50vp")
        List() {
          ListItem() {
            Row() {
              Text("提供个性化场景自定义需求")
                .width("70%")
                .height("60vp")
                .fontColor(Color.Black)
                .padding({ left: "20vp" })
                .fontSize("17fp")
              Image($r('app.media.xiezi'))
                .width("30%")
                .height("60%")
                .objectFit(ImageFit.Contain)
            }            
            .width("100%")
            .height("100%")
          }          
          .width("100%")
          .height("65vp")
          .align(Alignment.TopStart)
          .backgroundImage($r('app.media.bk11'))
          .backgroundImageSize(ImageSize.Cover)
          ListItem() {
            Text("每当触发任一设备")
              .width("100%")
              .height("100%")
              .backgroundColor("#e7f1fd")
              .fontColor(Color.Black)
              .padding({ left: "20vp" })
              .fontSize("14fp")
              .fontWeight(FontWeight.Bolder)
          }          
          .width("100%")
          .height("50vp")
          ListItem() {
            Row() {
              Column() {
                Text("触发设备")
                  .width("100%")
                  .height("60%")
                  .fontColor(Color.Black)
                  .padding({ left: "40vp" })
                  .fontSize("15fp")
                Text("例如：打开智能门锁时")
                  .width("100%")
                  .height("25vp")
                  .fontColor(Color.Black)
                  .padding({ left: "40vp" })
                  .fontSize("13fp")
              }              
              .width("60%")
              .height("100%")
              Text("+ 去设置")
                .width("40%")
                .height("60%")
                .fontColor("#df0c0c")
                .textAlign(TextAlign.Center)
                .fontSize("15fp")
            }            
            .width("100%")
            .height("100%")
          }          
          .width("100%")
          .height("65vp")
          .align(Alignment.TopStart)
          ListItem() {
            Row() {
              Text("且满足全部环境条件时")
                .width("45%")
                .height("100%")
                .fontColor(Color.Black)
                .padding({ left: "20vp" })
                .fontSize("14fp")
                .fontWeight(FontWeight.Bolder)
              Image($r('app.media.xiala'))
                .width("6%")
                .height("40%")
                .objectFit(ImageFit.Contain)
              Text("（非必选）")
                .width("60%")
                .height("100%")
                .fontColor(Color.Black)
                .textAlign(TextAlign.Center)
            }            
            .width("100%")
            .height("100%")
          }          
          .width("100%")
          .height("50vp")
          .backgroundColor("#e7f1fd")
          ListItem() {
            Row() {
              Column() {
                Text("环境条件")
                  .width("100%")
                  .height("60%")
                  .fontColor(Color.Black)
                  .padding({ left: "40vp" })
                  .fontSize("15fp")
                Text("例如：北京市温度高于30°时")
                  .width("100%")
                  .height("25vp")
                  .fontColor(Color.Black)
                  .padding({ left: "40vp" })
                  .fontSize("13fp")
              }              
              .width("60%")
              .height("100%")
              Text("+ 去设置")
                .width("40%")
                .height("60%")
                .fontColor("#df0c0c")
                .textAlign(TextAlign.Center)
                .fontSize("15fp")
            }            
            .width("100%")
            .height("100%")
          }          
          .width("100%")
          .height("65vp")
          .align(Alignment.TopStart)
          ListItem() {
            Text("就执行")
              .width("100%")
              .height("100%")
              .backgroundColor("#e7f1fd")
              .fontColor(Color.Black)
              .padding({ left: "20vp" })
              .fontSize("14fp")
              .fontWeight(FontWeight.Bolder)
          }          
          .width("100%")
          .height("50vp")
          ListItem() {
            Row() {
              Column() {
                Text("执行操作")
                  .width("100%")
                  .height("60%")
                  .fontColor(Color.Black)
                  .padding({ left: "40vp" })
                  .fontSize("15fp")
                Text("例如：打开智能插座")
                  .width("100%")
                  .height("25vp")
                  .fontColor(Color.Black)
                  .padding({ left: "40vp" })
                  .fontSize("13fp")
              }              
              .width("60%")
              .height("100%")
              Text("+ 去设置")
                .width("40%")
                .height("60%")
                .fontColor("#df0c0c")
                .textAlign(TextAlign.Center)
                .fontSize("15fp")
            }            
            .width("100%")
            .height("100%")
          }          
          .width("100%")
          .height("65vp")
          .align(Alignment.TopStart)
          ListItem() {
            Row() {
              Column() {
                Text("APP推送提醒")
                  .width("100%")
                  .height("100%")
                  .fontColor(Color.Black)
                  .padding({ left: "40vp" })
                  .fontSize("15fp")
              }              
              .width("60%")
              .height("100%")
              Text("+ 去设置")
                .width("40%")
                .height("60%")
                .fontColor("#df0c0c")
                .textAlign(TextAlign.Center)
                .fontSize("15fp")
            }            
            .width("100%")
            .height("100%")
          }          
          .width("100%")
          .height("65vp")
          .align(Alignment.TopStart)
          ListItem() {
            Text("生效时间")
              .width("100%")
              .height("100%")
              .backgroundColor("#e7f1fd")
              .fontColor(Color.Black)
              .padding({ left: "20vp" })
              .fontSize("14fp")
              .fontWeight(FontWeight.Bolder)
          }          
          .width("100%")
          .height("50vp")
          ListItem() {
            Row() {
              Column() {
                Text("重复生效时间：")
                  .width("100%")
                  .height("50%")
                  .fontColor(Color.Black)
                  .padding({ left: "40vp" })
                  .fontSize("15fp")
                  .fontWeight(FontWeight.Bolder)
                Text("生效时段：")
                  .width("74.82%")
                  .height("50%")
                  .offset({ x: "-19.49vp", y: "0vp" })
                  .fontColor(Color.Black)
                  .padding({ left: "40vp" })
                  .fontSize("15fp")
                  .fontWeight(FontWeight.Bolder)
              }              
              .width("43%")
              .height("100%")
              Column() {
                Text("每天")
                  .width("100%")
                  .height("50%")
                  .fontColor(Color.Black)
                  .fontSize("15fp")
                Text("0：00至00：00")
                  .width("100%")
                  .height("50%")
                  .offset({ x: "-32.78vp", y: "0vp" })
                  .fontColor(Color.Black)
                  .fontSize("15fp")
              }              
              .width("50%")
              .height("100%")
            }            
            .width("100%")
            .height("100%")
          }          
          .width("100%")
          .height("80vp")
          .align(Alignment.TopStart)
        }        
        .width("100%")
        .height("100%")
        .align(Alignment.TopStart)
        Button("创建场景")
          .width("180vp")
          .height("60vp")
          .offset({ x: "90vp", y: "-159.45vp" })
          .backgroundColor("#88c4dd")
          .fontColor("#010e13")
          .fontSize("19fp")
      }      
      .width("100%")
      .height("100%")
      .alignItems(HorizontalAlign.Start)
      .justifyContent(FlexAlign.Start)
    }    
    .width("100%")
    .height("100%")
  }
}
