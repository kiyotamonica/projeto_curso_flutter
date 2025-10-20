import 'package:flutter/material.dart';
import 'package:projeto_teste/components/difficulty.dart';

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;

  const Task(this.nome, this.foto, this.dificuldade, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              color: null,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
            ),
            Column(
              children: [
                Container(
                  color: null,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: null,
                        height: 100,
                        width: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black26,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(widget.foto, fit: BoxFit.cover),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 200,
                            child: Text(
                              widget.nome,
                              style: TextStyle(
                                fontSize: 16,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Difficulty(widget: widget),
                        ],
                      ),
                      SizedBox(
                        height: 70,
                        width: 70,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nivel++;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(Icons.arrow_drop_up),
                              Text('UP', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 200,
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value:
                          (widget.dificuldade > 0
                              ? (nivel / widget.dificuldade) / 10
                              : 1),
                        ),
                      ),
                      Text(
                        'Nível: $nivel',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}