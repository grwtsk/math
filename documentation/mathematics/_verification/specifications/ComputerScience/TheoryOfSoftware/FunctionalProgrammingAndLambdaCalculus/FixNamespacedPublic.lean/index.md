# Verification target: Fix Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "660d3e955a431f7c471dcf3f26a3e5f1cefef56d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fix/Variantfcf04c84ed59dd8b33965c3d25545dd597dfab4a802941d34e50c1a0f081b7e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FixNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FixNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `660d3e955a431f7c471dcf3f26a3e5f1cefef56d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fix/Variantfcf04c84ed59dd8b33965c3d25545dd597dfab4a802941d34e50c1a0f081b7e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fix/Variantfcf04c84ed59dd8b33965c3d25545dd597dfab4a802941d34e50c1a0f081b7e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Fix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FixNamespacedPublic.lean/declarations/fix.md) | 43 | `declaration-track:98284810b17afa0501dd5f33ceff9d8f2b66fea9d9cb1c03e56282ff512f0ec0` |
| 2 | `def` | [Fix.approx](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FixNamespacedPublic.lean/declarations/fix-approx.md) | 57 | `declaration-track:fd3d8f19bc7b0f622a156d625218602763aab3ed280dfc8675b8c23a8dd79b30` |
| 3 | `def` | [fixAux](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FixNamespacedPublic.lean/declarations/fixaux.md) | 62 | `declaration-track:9775d83bbcfc5aad74faa08df83bf6f5bf4a233589a4b854711cb8b348c13aab` |
| 4 | `def` | [fix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FixNamespacedPublic.lean/declarations/fix-source-edition-2.md) | 74 | `declaration-track:e0fad5e25cb07f0ac65204bab6787772a7292838c45811042a3eb9d5ab9bde42` |
| 5 | `theorem` | [fix_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FixNamespacedPublic.lean/declarations/fix-def-source-edition-2.md) | 79 | `result-track:afed57444d4e308fa018852a0499af55a2b56174ec58b9b5b7ce9f25a72739be` |
| 6 | `theorem` | [fix_def'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FixNamespacedPublic.lean/declarations/fix-def.md) | 113 | `result-track:7f0dc5363201a2079c8f00459aa7831821b578974204a41647dc409408607979` |
| 7 | `instance` | [hasFix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FixNamespacedPublic.lean/declarations/hasfix.md) | 123 | `declaration-track:1dfd32ff5f6dcc19830107f4d457e7d1913043d53b01b4197b0b7a6ea7dd90ff` |
| 8 | `instance` | [Part.hasFix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FixNamespacedPublic.lean/declarations/part-hasfix.md) | 130 | `declaration-track:767b5ec3a43bc24769247b0155e9451a3c42b701b4188547dbe20792a8276ba4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8377c662491bc4d44eb329e8143f67f03a31a119fb44dd7da28b6a8aa1cf67be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fix/Variantfcf04c84ed59dd8b33965c3d25545dd597dfab4a802941d34e50c1a0f081b7e4.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fix/Variantfcf04c84ed59dd8b33965c3d25545dd597dfab4a802941d34e50c1a0f081b7e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
