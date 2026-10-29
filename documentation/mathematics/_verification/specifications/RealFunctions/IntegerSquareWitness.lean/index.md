# Verification target: GRWTSK.Analysis.ErrorBounds.IntegerSquareWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "293d2264461e3ae00dca296533143ad4e2cafb4f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/IntegerSquareWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/IntegerSquareWitness.lean/index.md) · [Full source](../../../../RealFunctions/IntegerSquareWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `293d2264461e3ae00dca296533143ad4e2cafb4f`.

Source path: `GRWTSK/Analysis/ErrorBounds/IntegerSquareWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/IntegerSquareWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.IntegerExpStateFold`](../../../../RealFunctions/IntegerExpStateFold.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FloorBounds](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/floorbounds.md) | 22 | `declaration-track:80825e6d4dfd32739865da433e22408bf9f2dfc15b2dd80bf6de2a302235b181` |
| 2 | `def` | [CeilBounds](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/ceilbounds.md) | 25 | `declaration-track:a6cd03c20d417e0f4794cb834e9e2ddaacb6d4957c09d07ee3f1acf195ebaac1` |
| 3 | `theorem` | [floorBounds_iff](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/floorbounds-iff.md) | 27 | `result-track:eba28c8d1577c229e88c3a4c0fa9277322b11d22a8459d802ccaa333bfa88e8d` |
| 4 | `theorem` | [ceilBounds_iff](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/ceilbounds-iff.md) | 42 | `result-track:417dee11b57a09b948158ff7d02a1088104fb18bb7f27518884e1d2023c8e604` |
| 5 | `def` | [proposedResidual](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/proposedresidual.md) | 52 | `declaration-track:23561a7dc42caaf4d8b0a753223d685035e9fd9f407bcce69f5901e1969b9c1d` |
| 6 | `def` | [errorNumerator](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/errornumerator.md) | 55 | `declaration-track:f944b8aae226911a3822affbdd1f2d8cbe0a6ce4ab93a0a186ef85ce9d20834a` |
| 7 | `def` | [StepBounds](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/stepbounds.md) | 59 | `declaration-track:3f5cd377b5531535d9467dd9435a74fe51d19c1159694fd388b9fa1b23578c09` |
| 8 | `instance` | [stepBoundsDecidable](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/stepboundsdecidable.md) | 64 | `declaration-track:d8dda5cf6a56689fe8030d2bf6b04f93fdd2f5c91247f0140ef14a82ea235458` |
| 9 | `def` | [checkStep](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/checkstep.md) | 68 | `declaration-track:cf58f4a04b943a087c719c7183a82110272b2d60cc68316a40d95aa70499c250` |
| 10 | `theorem` | [proposedResidual_eq](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/proposedresidual-eq.md) | 70 | `result-track:837a2401f5d700c14176e38358ebbaa32ad7bde3d9dd520b9c14ba2bd4a88d7f` |
| 11 | `theorem` | [stepBounds_iff](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/stepbounds-iff.md) | 78 | `result-track:f1ea745aa78450d5c20d6e790dafa3f3d9727b687595cd5f6cb9ef13110c3402` |
| 12 | `theorem` | [checkStep_iff](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/checkstep-iff.md) | 97 | `result-track:59b8ab19973c81f16c69af22e9625ddccecedbe7baa371c7d917903fbb535c46` |
| 13 | `def` | [walk](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/walk.md) | 103 | `declaration-track:341c6cda29fa2cfdb8f60469ff206ae08d4cbcf57118e54d5bdc1652ac27869c` |
| 14 | `theorem` | [run_cursor](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/run-cursor.md) | 108 | `result-track:cf3e3a190e942bd11115090f0accd9de46ab9118898021ce57963b9162b83192` |
| 15 | `theorem` | [walk_sound](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/walk-sound.md) | 116 | `result-track:68754b48a7571bbb7cd2fd03048b8d9af6a39a487676fce430d25ad4840aff5a` |
| 16 | `theorem` | [walk_length](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/walk-length.md) | 136 | `result-track:6b8e267adcd4e110456373f55687b1d5d434fc78d64e55f90147c3b4b7e6ecb9` |
| 17 | `def` | [rowsFor](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/rowsfor.md) | 153 | `declaration-track:f0ab2b716258a24c9a89fb37e0771b8ecf128d8eb2577afd3210f9aff14cd10f` |
| 18 | `theorem` | [walk_rowsFor](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/walk-rowsfor.md) | 157 | `result-track:8ee2e249cea05e43974323fc3cb2aa6da978b53a76a62426e25345dca35303ed` |
| 19 | `def` | [check](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/check.md) | 165 | `declaration-track:ee68dbf9a3533a86ddac12913984b302887a0110155550944885c29486b10d1a` |
| 20 | `theorem` | [check_iff](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/check-iff.md) | 170 | `result-track:fbfa070be234d770fb43da954c19e822721f6378e78be11b535f6eb6fdf6790a` |
| 21 | `theorem` | [check_sound](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/check-sound.md) | 177 | `result-track:fd792dd729e991d57314d4b9c99bd5e0cdf65b0d9a6471c52875ff7637d6a18c` |
| 22 | `theorem` | [exists_checked_iff](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/exists-checked-iff.md) | 183 | `result-track:06a49fe7fbec9503fa82afd6f119e3e5b62b0f1a358f5fc37a380cb0ca253d18` |
| 23 | `theorem` | [walk_append](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/walk-append.md) | 192 | `result-track:b2587f5ffd802feac91ddf31952ae1089d2d55059089509513b3175b1f4897aa` |
| 24 | `theorem` | [check_append](../../../../RealFunctions/IntegerSquareWitness.lean/declarations/check-append.md) | 213 | `result-track:0d82c6bb6ee5c05a52d02e4079f03dd08ba74279f2d1453a957df8bd2db2f475` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa6d991949881767c32e7b9ee4722873c1d7a9f80562e4785e146796d9c18a57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ErrorBounds/IntegerSquareWitness.lean","GRWTSK/_verification/specifications/Analysis/ErrorBounds/IntegerSquareWitness.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
