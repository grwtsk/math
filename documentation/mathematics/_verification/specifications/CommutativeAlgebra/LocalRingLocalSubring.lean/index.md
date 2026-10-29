# Verification target: Local Ring Local Subring

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90d074bc764e860dffaf9e03b4431b8237b56adc",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalSubring/Variantc04d81d17f10b66277b0f8114da77fd77bfc05614f519679c8935647d9ecf293.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90d074bc764e860dffaf9e03b4431b8237b56adc`.

Source path: `GRWTSK/Algebra/LocalSubring/Variantc04d81d17f10b66277b0f8114da77fd77bfc05614f519679c8935647d9ecf293.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalSubring/Variantc04d81d17f10b66277b0f8114da77fd77bfc05614f519679c8935647d9ecf293.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FieldSimp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.RingHom.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/declarations/instance-source-edition-3.md) | 24 | `declaration-track:5c3b77358c515d5e552ef54e4566365469e39e6a1db8945fb52951e6ac65a9d7` |
| 2 | `instance` | [isLocalRing_top](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/declarations/islocalring-top.md) | 28 | `declaration-track:9f8ed9fadebfb22533ddc53ceaad3e26b9013aa1f0f6ea2b8ba7656b185a8117` |
| 3 | `structure` | [LocalSubring](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/declarations/localsubring.md) | 34 | `declaration-track:c2c7591666d67e1800cb68c43dba47b9ebf526ca81df2836f9f0806fb72bffc8` |
| 4 | `lemma` | [toSubring_injective](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/declarations/tosubring-injective.md) | 43 | `result-track:7e5171d525829d6d02bb2397b069148b87bd527d71099ddfc9d7c39f39c159a0` |
| 5 | `def` | [copy](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/declarations/copy.md) | 48 | `declaration-track:18cb360f8df32de35bb600e1661862b63e9f9b2f889d3729ce8a2fcf7b3eb6b4` |
| 6 | `def` | [map](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/declarations/map.md) | 53 | `declaration-track:0cb9520e6570c4a0c7ee9bdecbf012f1a9fd3217954893941e7de58af62cee5f` |
| 7 | `def` | [range](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/declarations/range.md) | 58 | `declaration-track:b57760e7b4d233c30a6a81081f10018a1ce1416627da210bcaa270a5cf3b01fa` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/declarations/instance-source-edition-4.md) | 66 | `declaration-track:b4595ccd5554b2f20355c1d61089904f0227b3adf7a5bafd1cb276866de1a589` |
| 9 | `lemma` | [le_def](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/declarations/le-def.md) | 73 | `result-track:6fe963d87086a6a8732a1928bdd0154607db150b35bc638e0ce27a85e57deea9` |
| 10 | `lemma` | [toSubring_mono](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/declarations/tosubring-mono.md) | 76 | `result-track:14da1a3877f1a6cbc34c9e1bd9f38cb8d0e3757b98d4feb9057d9c8b3389d9aa` |
| 11 | `def` | [ofPrime](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/declarations/ofprime.md) | 86 | `declaration-track:a1b959ec4ee5ca0e0617051a807d61c44bfc07cd66932bf7185fd2a2eded0458` |
| 12 | `lemma` | [le_ofPrime](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/declarations/le-ofprime.md) | 90 | `result-track:65f11f94d8dede687e8efeca6ff042899d16ed5d6ca69a4f92caef3915528568` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/declarations/instance.md) | 95 | `declaration-track:31ea311a1e9603db4d9d16e13a465d75c1ffab50bbe6295c2ca7cdb53895a928` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/declarations/instance-source-edition-2.md) | 97 | `declaration-track:3adb27e28dd43d42be0519081c31c502343524aa31dcfc09237fdceeb97cfc6d` |
| 15 | `def` | [ofPrimeEquiv](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/declarations/ofprimeequiv.md) | 101 | `declaration-track:5d7faea030967c4d01d72aa69e4320d1e4222498493cbddf0e07929976222b51` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalRingLocalSubring.lean/declarations/instance-source-edition-5.md) | 116 | `declaration-track:fec6290cb0fd63c260c98fc99036c242c09cf9cd2616448a7c623ca01af496f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=706f1506e4b3a63c8bd69d8f9d3e67cbd33f110f458f5140f6229f7b19f40a62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LocalSubring/Variantc04d81d17f10b66277b0f8114da77fd77bfc05614f519679c8935647d9ecf293.lean","GRWTSK/_verification/specifications/Algebra/LocalSubring/Variantc04d81d17f10b66277b0f8114da77fd77bfc05614f519679c8935647d9ecf293.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
