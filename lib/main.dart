import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Konversi Mata Uang',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/SecondScreen': (context) => SecondScreen(),
        '/ThirdScreen': (context) => ThirdScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.network(
                'data:image/jpeg;base64,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',
                height: 200,
                width: 600,
              ),
            ),
            Text(
              'Kurs tukar EURO ke RUPIAH adalah Rp16.500',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            Text(
              'Disclaimer : Hanya bisa konversi EURO ke RUPIAH',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(),
                  ),
                );
              },
              child: Text(
                'start',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EURO to IDR CONVERTER'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'EURO (€) KE RUPIAH (Rp)',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            Text(
              'Notes : ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            Text(
              '* Nilai tidak boleh negatif',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            Text(
              '* Nilai tidak boleh berupa huruf atau simbol',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 20),
            KonversiForm(),
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final double hasilKonversi = args['hasilKonversi'];
    final double euroValue = args['euroValue'];

    String keterangan = '';

    switch (hasilKonversi.compareTo(1)) {
      case 1:
        keterangan =
            'Konversi €${euroValue.toStringAsFixed(2)} = Rp. ${hasilKonversi.toStringAsFixed(2)}';
        break;
      case 0:
        keterangan = 'Konversi €${euroValue.toStringAsFixed(2)} = Rp. 16,500';
        break;
      default:
        keterangan = 'Konversi €${euroValue.toStringAsFixed(2)} = Rp. 0';
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil Konversi'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Hasil Konversi: Rp. ${hasilKonversi.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(keterangan),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/SecondScreen');
            },
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
}

class KonversiForm extends StatefulWidget {
  @override
  _KonversiFormState createState() => _KonversiFormState();
}

enum KonversiError { InvalidInput, None }

class _KonversiFormState extends State<KonversiForm> {
  double euroValue = 0.0;
  final double konversiRate = 16500.0;
  KonversiError konversiError = KonversiError.None;

  void _hitungKonversi(BuildContext context) {
    switch (konversiError) {
      case KonversiError.InvalidInput:
        _showErrorDialog(
            context, 'Kesalahan Input', 'Maaf nilai yang anda masukan salah');
        break;
      case KonversiError.None:
        double rupiahValue = euroValue * konversiRate;
        Navigator.pushNamed(context, '/ThirdScreen',
            arguments: {'hasilKonversi': rupiahValue, 'euroValue': euroValue});
        break;
    }
  }

  void _showErrorDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                try {
                  euroValue = double.parse(value);
                  konversiError = (euroValue > 0)
                      ? KonversiError.None
                      : KonversiError.InvalidInput;
                } catch (e) {
                  konversiError = KonversiError.InvalidInput;
                }
              });
            },
            decoration: InputDecoration(
              labelText: 'Masukkan Jumlah Euro',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            _hitungKonversi(context);
          },
          child: Text('Convert'),
        ),
      ],
    );
  }
}
