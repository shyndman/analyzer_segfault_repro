import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:path/path.dart';

const workspacePath_CHANGE_ME =
    '/Users/shyndman/work-code/analyzer_segfault_repro';

void main() {
  final path = join(workspacePath_CHANGE_ME, '.analysis/unsatisfied_dep.dart');
  final context = AnalysisContextCollection(includedPaths: [
    path,
  ]).contextFor(path);

  // Although the except occurs in AnalysisContextCollection's constructor,
  // this line is required for the repro. Dead code removal related?
  context.currentSession.getResolvedUnit(path);
}
