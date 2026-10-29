# Verification target: Binomial Chebyshev Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "533cbf45713f409b40133f5b92029b92719b37a3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinomialChebyshevBounds.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinomialChebyshevBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `533cbf45713f409b40133f5b92029b92719b37a3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.LcmChebyshev` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Central` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralBinomial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinomialChebyshevBounds.lean/declarations/centralbinomial.md) | 15 | `declaration-track:3396af1b9e22f4c7dc6827e73e4ab69e7c48bd9f84d7ae062b14a00b3f38b8f0` |
| 2 | `theorem` | [centralBinomial_pos](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinomialChebyshevBounds.lean/declarations/centralbinomial-pos.md) | 19 | `result-track:6b41020ed7ed9ccda303f893cb2d55ceeb6fa9a46911ee29739eea2f7982f66b` |
| 3 | `theorem` | [centralBinomial_le_four_pow](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinomialChebyshevBounds.lean/declarations/centralbinomial-le-four-pow.md) | 24 | `result-track:4074bf963f7bc16fe8fa048012cc2f48de6dcee60005b176e4931ec14d225de9` |
| 4 | `theorem` | [log_centralBinomial_le_n_log_four](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinomialChebyshevBounds.lean/declarations/log-centralbinomial-le-n-log-four.md) | 29 | `result-track:01e9d0b8d8a4d7b39b810bb14c3b81a983a3710b4c93903bd9fd0099c76b0137` |
| 5 | `def` | [CentralBinomialThetaDifferenceTarget](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinomialChebyshevBounds.lean/declarations/centralbinomialthetadifferencetarget.md) | 45 | `declaration-track:8e69896d91cddff03fd2f070084be48f144c1ca7645bc6805e917e739cf5a5ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45afa9665e3f09fefa8bb202f653b10431a5a0b8f3fdd072eee4685c9152b24c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
