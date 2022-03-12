import 'package:flutter/material.dart';

class MyParcelDeliveryMethod extends StatefulWidget {
  const MyParcelDeliveryMethod({
    Key? key,
    required this.parcelDeliveryMethod,
    required this.parcelDeliveryDuration,
    required this.parcelDeliveryImage,
  }) : super(key: key);

  final String parcelDeliveryMethod,
      parcelDeliveryDuration,
      parcelDeliveryImage;

  @override
  State<MyParcelDeliveryMethod> createState() => _MyParcelDeliveryMethodState();
}

class _MyParcelDeliveryMethodState extends State<MyParcelDeliveryMethod> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: ExpansionTile(
        tilePadding: EdgeInsets.all(0),
        trailing: const SizedBox.shrink(),
        title: Container(
          padding: EdgeInsets.all(16),
          height: 102,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.parcelDeliveryImage),
                  ),
                ),
              ),
              SizedBox(
                width: 34,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.parcelDeliveryMethod,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    widget.parcelDeliveryMethod,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ],
          ),
        ),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 1,
            color: const Color(0xFFd5d5d5),
          ),
          _buildExpansionChildren(context),
        ],
      ),
    );
  }

  Widget _buildExpansionChildren(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16).copyWith(top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Text(
            'Recipient Info',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Name',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          TextField(
            onChanged: (value) {},
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Email',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          TextField(
            onChanged: (value) {},
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Phone number',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          TextField(
            onChanged: (value) {},
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Address',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          TextField(
            onChanged: (value) {},
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}