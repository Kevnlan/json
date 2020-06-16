 Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: FutureBuilder(
              future: _getProdects(),
              // ignore: missing_return
              builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
                if (asyncSnapshot.data == null) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 4.0),
                      itemCount: prodects[0].success.products.length,
                      //itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            print("this item is ${asyncSnapshot.data[index]}");
                          },
                          child: Container(
                            color: Colors.white30,
                            child: Stack(children: [
                              Container(
                                padding: EdgeInsets.only(
                                    bottom: SizeConfig.heightMultiplier * 0.92,
                                    top: SizeConfig.heightMultiplier * 0.92,
                                    right: SizeConfig.widthMultiplier * 1.96,
                                    left: SizeConfig.widthMultiplier * 1.96),
                                child: Text(
                                  "Tomato Sauce",
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.heightMultiplier * 2.88,
                                      color: Colors.black),
                                ),
                              ),
                              Positioned(
                                top: SizeConfig.heightMultiplier * 4.04,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      bottom:
                                          SizeConfig.heightMultiplier * 0.92,
                                      top: SizeConfig.heightMultiplier * 0.92,
                                      right: SizeConfig.widthMultiplier * 1.96,
                                      left: SizeConfig.widthMultiplier * 1.96),
                                  child: Text(
                                    "5.50JOD",
                                    style: TextStyle(
                                        fontSize:
                                            SizeConfig.heightMultiplier * 3.23,
                                        color:
                                            Color.fromRGBO(61, 186, 171, 1.00)),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0.1,
                                child: Container(
                                    height: 85,
                                    width: 300,
                                    color: Colors.grey[200]),
                              ),
                              Positioned(
                                top: SizeConfig.heightMultiplier * 10.39,
                                left: SizeConfig.widthMultiplier * 4.866,
                                child: Image.asset(
                                  'assets/images/prodects/18db4475268fc3fc9d8acd1ac64b7f36.png',
                                ),
                              ),
                              Positioned(
                                bottom: SizeConfig.heightMultiplier * 3.46,
                                right: SizeConfig.widthMultiplier * 3.64,
                                child: Image.asset(
                                  'assets/images/icons/Asset 9mdpi.png',
                                  height: 20,
                                  width: 25,
                                ),
                              ),
                            ]),
                          ),
                        );
                      });
                }
              })),
    );
  }
