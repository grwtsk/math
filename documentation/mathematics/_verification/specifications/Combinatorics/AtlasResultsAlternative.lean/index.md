# Verification target: Atlas Results Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30c9df7f53c3b685bd0bacae1192948f807e6f38",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/AtlasResultsAlternative.lean/index.md) · [Full source](../../../../Combinatorics/AtlasResultsAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30c9df7f53c3b685bd0bacae1192948f807e6f38`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Powerset` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Closure` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Rule](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/rule.md) | 22 | `declaration-track:a69e73fe99a83449180121a6328400e9d5b5c6e049ac8bf5ff4e6bfc45ea0414` |
| 2 | `def` | [RuleClosed](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/ruleclosed.md) | 32 | `declaration-track:fbd90a011313ac10c401e1c15930aab080df77f7cf2b9bf40a40ee29edc0e7df` |
| 3 | `instance` | [(anonymous)](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/instance.md) | 35 | `declaration-track:73db62bae5c8f7aaa23cac4c2cef1b00884d79bda185e216f615962d2f2e2515` |
| 4 | `def` | [saturate](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/saturate.md) | 45 | `declaration-track:38ecf2ffa179da7339934694fe16075ac3bd4d49338846ff3b05e140bc0ccbe5` |
| 5 | `theorem` | [mem_saturate](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/mem-saturate.md) | 50 | `result-track:605feccc27f76d982829657c4f414fd92f786720e1c9aeafe0467a06f33cc7c0` |
| 6 | `theorem` | [saturation_extensive](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/saturation-extensive.md) | 56 | `result-track:d377df39dffc83c81f73128f45064c8e0420ce7af151fe4f8cd67acb772f0385` |
| 7 | `theorem` | [saturation_monotone](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/saturation-monotone.md) | 62 | `result-track:11dea65189ae43fb8794febfa1c67781a6a8a0b9f6a467ee0eb08beeeee62ec3` |
| 8 | `theorem` | [saturation_closed](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/saturation-closed.md) | 68 | `result-track:6bbf67f8d1b8728eec09745fc3dc6a77219bca334194bb9d469c7a433473f3a5` |
| 9 | `theorem` | [saturation_least](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/saturation-least.md) | 78 | `result-track:ad822e5909b6894aa598083761ca39df582f74a805dc39e6c5f1c14cff98d056` |
| 10 | `theorem` | [saturation_idempotent](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/saturation-idempotent.md) | 85 | `result-track:1a31b851fbdf49123075cdce168040fe19524824095920761bbd0445dc275b2b` |
| 11 | `def` | [saturation](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/saturation.md) | 92 | `declaration-track:99fb2f5161c98af4a1079318e977daaea6a6f8190e489d38e1b3325ef7da36a6` |
| 12 | `theorem` | [saturation_sound](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/saturation-sound.md) | 99 | `result-track:82b734595d9d1cfb13782325e4b336f267420182ab7b3f2e73886bd222456294` |
| 13 | `def` | [attach](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/attach.md) | 124 | `declaration-track:7146c49ba4388c07a070df81cf00c9265f367f0e9749e0a0dd868744883326ef` |
| 14 | `theorem` | [attach_extends_atlas](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/attach-extends-atlas.md) | 127 | `result-track:5e484193f3e90dd7aed68d54de7b2bc10f32d2d685b47b5e90752c54775a9ad8` |
| 15 | `theorem` | [attach_preserves_old_closure](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/attach-preserves-old-closure.md) | 131 | `result-track:1a15e3994db2979e28ae8ef1d76aa3196201c12d0b0c47d5da57f44ac49240d7` |
| 16 | `theorem` | [attach_attach](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/attach-attach.md) | 136 | `result-track:20d9c2b2aa413f0bfcb8448f754ed1f31616c0e88fdc71c7e7ef5a5e98353e46` |
| 17 | `theorem` | [attachment_order_final_equiv](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/attachment-order-final-equiv.md) | 141 | `result-track:4eca76395cb865cea08d7d495dc7273e6c262a69f666678d0086e1bd5de64965` |
| 18 | `theorem` | [attach_order_independent](../../../../Combinatorics/AtlasResultsAlternative.lean/declarations/attach-order-independent.md) | 146 | `result-track:b098e702eef07f44bffe10307eca41954ee09b09ab62d4dcf4b55d5960a00e5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62ee091489d2ee5b887a2c2fed41b27f19bf4ad2f9ac6eba62e7060c57aeca2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Atlas/Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
