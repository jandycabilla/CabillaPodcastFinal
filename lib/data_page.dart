import 'package:flutter/material.dart';
import 'podcast.dart'; // Import this to access `podcastList`.

class DataPage extends StatefulWidget {
  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  void deletePodcast(int index) {
    setState(() {
      podcastList.removeAt(index);
    });
  }

  void editPodcast(int index) {
    // Placeholder for edit logic
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Edit functionality for ${podcastList[index].title} is not implemented yet.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Podcasts')),
      body: ListView.builder(
        itemCount: podcastList.length,
        itemBuilder: (context, index) {
          final podcast = podcastList[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(podcast.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
              title: Text(podcast.title),
              subtitle: Text(podcast.description),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit, color: Colors.blue),
                    onPressed: () => editPodcast(index),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () => deletePodcast(index),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
