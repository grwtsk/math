# Verification target: Defs Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d19d8057eac869df9395c6f2b73c301ce0a8107",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variant527f813f15107b306e883ced0f8c912b583ecca81cc791d2cded29003bc51c60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefsDefs.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefsDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d19d8057eac869df9395c6f2b73c301ce0a8107`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variant527f813f15107b306e883ced0f8c912b583ecca81cc791d2cded29003bc51c60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Defs/Variant527f813f15107b306e883ced0f8c912b583ecca81cc791d2cded29003bc51c60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Fib.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lucasUPair](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefsDefs.lean/declarations/lucasupair.md) | 26 | `declaration-track:406fa24f848ee744f013646f053bd8c6e6d43f8eeccb64a10c5068d09c226550` |
| 2 | `def` | [lucasU](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefsDefs.lean/declarations/lucasu.md) | 33 | `declaration-track:6cd9a4f11c6ce0fadb5a965aa8867eaf7cbd1d2d12379d37994e074549b51615` |
| 3 | `def` | [lucasVPair](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefsDefs.lean/declarations/lucasvpair.md) | 37 | `declaration-track:1771c239d2a8c61d40423b087670b1765262ba9e7b5f79bab75d48b9e68e7a1d` |
| 4 | `def` | [lucasV](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefsDefs.lean/declarations/lucasv.md) | 44 | `declaration-track:ff16149dc3b1d49fc0f98be8c0a7c8bc9559fa77abc4d600b15b8f1c44cad89a` |
| 5 | `def` | [lucasUPairMod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefsDefs.lean/declarations/lucasupairmod.md) | 50 | `declaration-track:1f08c60b2fa7c744b74a76be414576d7c97d7330cf0e477a8dd097cb4197d940` |
| 6 | `def` | [lucasUMod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefsDefs.lean/declarations/lucasumod.md) | 57 | `declaration-track:d2bc27f632e4d5c92c9f579fce3b3961c8d8725cdf87eca4edce174540e68b43` |
| 7 | `theorem` | [lucasUPair_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefsDefs.lean/declarations/lucasupair-zero.md) | 62 | `result-track:2e87ccb6e2c743d2dcbf2597471b7753c2d41c02926b997938ddeb26268091f3` |
| 8 | `theorem` | [lucasUPair_succ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefsDefs.lean/declarations/lucasupair-succ.md) | 64 | `result-track:60de4b368a5df17875fdac6cc2e1b7d466aac7177350f217f3ceed1d85361a63` |
| 9 | `theorem` | [lucasU_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefsDefs.lean/declarations/lucasu-zero.md) | 69 | `result-track:fbe117f351d7613b361b8c3cf292d412246d0dec35a40e68d8e4bf75b06e38fa` |
| 10 | `theorem` | [lucasU_one](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefsDefs.lean/declarations/lucasu-one.md) | 71 | `result-track:d5b0810d6994e66721cac3336c5993fc3e3dcbcf03c950ba7fbfe1643f469202` |
| 11 | `theorem` | [lucasU_succ_succ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefsDefs.lean/declarations/lucasu-succ-succ.md) | 73 | `result-track:01bc20c6bb5550c08fe62cad2d1a59c27e88337486edea071532e4d854e64364` |
| 12 | `theorem` | [lucasU_fib](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefsDefs.lean/declarations/lucasu-fib.md) | 79 | `result-track:f9d44568e993c13ff5ca91b928d5c081fa0a38173c2ada8fbafe292573752fb7` |
| 13 | `theorem` | [lucasUPairMod_eq_mod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefsDefs.lean/declarations/lucasupairmod-eq-mod.md) | 94 | `result-track:ae8ee314d2cab4167ed64dcdcf86766da1ce1f83566d56c39ee3281bff56f5af` |
| 14 | `theorem` | [lucasUMod_eq_mod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefsDefs.lean/declarations/lucasumod-eq-mod.md) | 111 | `result-track:49c03c09e119b355e1604d6862c0bccf5b4e20648316d8efd2b850bca56e0996` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee5e82f21643ce1a049045b2bccccabc189e656eb3d0f957ba19392debc911bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variant527f813f15107b306e883ced0f8c912b583ecca81cc791d2cded29003bc51c60.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Defs/Variant527f813f15107b306e883ced0f8c912b583ecca81cc791d2cded29003bc51c60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
