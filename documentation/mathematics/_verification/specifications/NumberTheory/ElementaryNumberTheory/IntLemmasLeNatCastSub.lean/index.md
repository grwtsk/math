# Verification target: Int Lemmas Le Nat Cast Sub

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "433a8de5ee2e4c0aa5af30cbdd8a8739921bfe76",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant9b82133e20f7973b431078d3a046ae6247b394ce6c9e0afe9fcd71d506cac7b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `433a8de5ee2e4c0aa5af30cbdd8a8739921bfe76`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant9b82133e20f7973b431078d3a046ae6247b394ce6c9e0afe9fcd71d506cac7b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Lemmas/Variant9b82133e20f7973b431078d3a046ae6247b394ce6c9e0afe9fcd71d506cac7b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Bitwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_natCast_sub](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/le-natcast-sub.md) | 23 | `result-track:ea7c5c19b5e638cdff152f7225828ac4ded83ec3d2b7d2b788496f5c80cab118` |
| 2 | `theorem` | [succ_natCast_pos](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/succ-natcast-pos.md) | 31 | `result-track:8e28db1196252ffaf5f8875844d497cd3139d960d91cabb34aa86976f4c3065d` |
| 3 | `theorem` | [natAbs_eq_iff_sq_eq](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/natabs-eq-iff-sq-eq.md) | 37 | `result-track:c086a36f0587b3a6c2dd675ef8a3316a70074502338cb7a07df413a5795dd6e2` |
| 4 | `theorem` | [natAbs_lt_iff_sq_lt](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/natabs-lt-iff-sq-lt.md) | 41 | `result-track:efeef54ae03296e7e8c4072e05940856bb7c34a66e49da082b364ce10e29554d` |
| 5 | `theorem` | [natAbs_le_iff_sq_le](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/natabs-le-iff-sq-le.md) | 45 | `result-track:2f0433679320ffaebbe6b35dcb7ee9bee7f7a1b7210cffe7fe54a75be28ae538` |
| 6 | `theorem` | [natAbs_inj_of_nonneg_of_nonneg](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/natabs-inj-of-nonneg-of-nonneg.md) | 49 | `result-track:abb502a6b27bea7a83217e76b13c24d7c218b4ddfceb713303c953029a613a94` |
| 7 | `theorem` | [natAbs_inj_of_nonpos_of_nonpos](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/natabs-inj-of-nonpos-of-nonpos.md) | 52 | `result-track:f0578f57c5a1e714645a4a1bca342a963388570fb2d6a234cb714302362d03e3` |
| 8 | `theorem` | [natAbs_inj_of_nonneg_of_nonpos](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/natabs-inj-of-nonneg-of-nonpos.md) | 57 | `result-track:ccf13cf1be81c518af0794c053609227fe0cd593898078315438bcd3fa47a4ec` |
| 9 | `theorem` | [natAbs_inj_of_nonpos_of_nonneg](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/natabs-inj-of-nonpos-of-nonneg.md) | 61 | `result-track:10cb39bd9e4f2443fe28e563153245362abcac831c7cb66acdb8424928e4fcbc` |
| 10 | `theorem` | [natAbs_coe_sub_coe_le_of_le](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/natabs-coe-sub-coe-le-of-le.md) | 67 | `result-track:abb04d0be0aeb74e2e55f156121a229f84ac150d5f433477f12b6966b750007d` |
| 11 | `theorem` | [natAbs_coe_sub_coe_lt_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/natabs-coe-sub-coe-lt-of-lt.md) | 75 | `result-track:69eb60e1d569d1b9f4e0e9f192b3ae776fbfe1f0fb842f2503f809894ea461ef` |
| 12 | `theorem` | [strictMonoOn_natAbs](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/strictmonoon-natabs.md) | 85 | `result-track:08b1eb738c3a1b55f4206c570aaa8b6e8f7ffe2151af59f4d25a86074290a9c6` |
| 13 | `theorem` | [strictAntiOn_natAbs](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/strictantion-natabs.md) | 88 | `result-track:448bfe1f0698e9dd633902ae710f856529ea620a91929ae08e503d5a06d224fb` |
| 14 | `theorem` | [injOn_natAbs_Ici](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/injon-natabs-ici.md) | 92 | `result-track:c52d10a26c8a016d4ce97e1463d252b517d0d2a5eb63481a5a258ae4f2559a75` |
| 15 | `theorem` | [injOn_natAbs_Iic](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/injon-natabs-iic.md) | 95 | `result-track:44f249d6c6bdb470ce461656909173895445f8264c4430c9c80ae941acdd8343` |
| 16 | `theorem` | [div2_bit](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/div2-bit.md) | 106 | `result-track:ee325b2e9033d36b057c87375ca2944e9e01ce47cc1b9b696c04e2dd195c9ae5` |
| 17 | `theorem` | [ediv_emod_unique''](../../../../../NumberTheory/ElementaryNumberTheory/IntLemmasLeNatCastSub.lean/declarations/ediv-emod-unique.md) | 115 | `result-track:5ea7f1d86bc62e36586526ecab7cd9f4c1d2aabf40f49ec089c692962bb89f86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c80834ad1a8ff9ecdfeed460b0b474db15b071d9a59e5e348f3d7cd40f9b6030 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant9b82133e20f7973b431078d3a046ae6247b394ce6c9e0afe9fcd71d506cac7b0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Lemmas/Variant9b82133e20f7973b431078d3a046ae6247b394ce6c9e0afe9fcd71d506cac7b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
