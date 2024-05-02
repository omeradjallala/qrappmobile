import 'command.dart';

class HistoryInfos {
  final CommandInfos command;
  final String from;
  final String to;

  const HistoryInfos({
    required this.command,
    required this.from,
    required this.to,
  });
}
