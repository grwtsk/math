# Verification target: Cardinal Emb Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dbab19a9316004f4441c12387bca76f7ae0de9d",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dbab19a9316004f4441c12387bca76f7ae0de9d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wellOrderedBasis](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/wellorderedbasis.md) | 97 | `declaration-track:c57f84eec945f3e542ee3ac14d1ea0bc84c6932d3de46bd9dff6e70d5c653d01` |
| 2 | `theorem` | [adjoin_basis_eq_top](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/adjoin-basis-eq-top.md) | 106 | `result-track:d8df40965fc2d49d978b4566763174ce166aa4dd56506f25e53639adb7fdc24e` |
| 3 | `lemma` | [noMaxOrder_rank_toType](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/nomaxorder-rank-totype.md) | 114 | `result-track:ebc4e00051edd8f3f939d9ca62066fa33f9afb73349c92aae81e2358c8c6d4db` |
| 4 | `def` | [leastExt](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/leastext.md) | 124 | `declaration-track:ffbe90222c2ed05d004b800944b51e9286331dfcc4992b5704850697c24f8b58` |
| 5 | `theorem` | [isLeast_leastExt](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/isleast-leastext.md) | 151 | `result-track:758cc001bdd83cb0da6f0cfbeba90405e0a289ceb0ea256f06f4be58b5da57ee` |
| 6 | `theorem` | [strictMono_leastExt](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/strictmono-leastext.md) | 155 | `result-track:6442e09c6db1f3abaf45436139dde736120a6d927fbf2486bc26a2ec69157ef1` |
| 7 | `theorem` | [adjoin_image_leastExt](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/adjoin-image-leastext.md) | 163 | `result-track:96cdbc1117037c18d12eba0575810b12e5e6f6aebca9cd23f5459839c8f05cb0` |
| 8 | `theorem` | [iSup_adjoin_eq_top](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/isup-adjoin-eq-top.md) | 168 | `result-track:b43fb1038f0ab7fa7425a67e797c859e3a9ed84335f30f82b9f23b65b53d3da7` |
| 9 | `theorem` | [strictMono_filtration](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/strictmono-filtration.md) | 174 | `result-track:90cebcfc596bc40e76472e9f97bcfa06b3b1ff9e41108d48353e7de69fef8889` |
| 10 | `theorem` | [filtration_succ](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/filtration-succ.md) | 178 | `result-track:d492f96a35bec59c2ef1a72f25ee3eb48dac51ca1e8ea251db15b6fc53bd0761` |
| 11 | `def` | [succEquiv](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/succequiv.md) | 184 | `declaration-track:49f08957e400d3403d638a48f1ab5bedb7f2687ef93caf18bcbf2403bc7e0466` |
| 12 | `theorem` | [succEquiv_coherence](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/succequiv-coherence.md) | 190 | `result-track:e442787806343c09695641730e415e7a78232dcfec12afb2d03562f2204e756b` |
| 13 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 195 | `declaration-track:cb944f05b6c0749e2a4593bc50eba8233827f066676ebfaea005970a3901f755` |
| 14 | `theorem` | [deg_lt_aleph0](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/deg-lt-aleph0.md) | 198 | `result-track:93f6ede528c275e85bc20718463a18339ea8261c6d799d27a0f3897122b17c78` |
| 15 | `def` | [filtration](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/filtration.md) | 203 | `declaration-track:77ae6886e085b1268735152ed51a40d211df823d5fba8cfb10f8da0052acef42` |
| 16 | `def` | [factor](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/factor.md) | 212 | `declaration-track:e3e05155c915ff5715a5895843f0d5d87eb95f4e306c33a6686af5b144057da1` |
| 17 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 216 | `declaration-track:637dd0cf6d1069e85abd8c9a44b6115f6531d0f76b09594d29ebaca353f6a903` |
| 18 | `theorem` | [two_le_deg](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/two-le-deg.md) | 220 | `result-track:7e86d8aba1d328cf66bed7d9bebe63181567128a05b75cea19df015ec2321d5d` |
| 19 | `def` | [embFunctor](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/embfunctor.md) | 235 | `declaration-track:7358397cb2278784ddf26f5acdff617d314b299b12a13f1f146ae0f2177306d9` |
| 20 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/instance.md) | 238 | `declaration-track:0f33382677fe25ba0fb74336577575840f9a150d7dc23cb10127ea8b145cca81` |
| 21 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 243 | `declaration-track:e1aab65a99896c874655bba845362fc2e577d37b8b592f02b5bc3b2154f0ada4` |
| 22 | `def` | [equivSucc](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/equivsucc.md) | 246 | `declaration-track:8e746ec5b75e9d0ff94ea2a9608b246ebd287f52f13ee3231ef8f2f64e96209e` |
| 23 | `theorem` | [equivSucc_coherence](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/equivsucc-coherence.md) | 252 | `result-track:3ee4e0466bf7dbae42c1988d9693ec8102849342a1e8b7c4b97b61c663768422` |
| 24 | `theorem` | [directed_filtration](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/directed-filtration.md) | 259 | `result-track:a5a0fb08f493c09c7c64d8cdcab437ab1f8d578788a3e13d5bab2a79f94ccaf2` |
| 25 | `theorem` | [iSup_filtration](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/isup-filtration.md) | 266 | `result-track:d4c80447bab409f9c550ce0aae398913c5069565965dff67a76c27395df0e87e` |
| 26 | `lemma` | [eq_bot_of_not_nonempty](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/eq-bot-of-not-nonempty.md) | 276 | `result-track:547d815054c45f89ed183b5c60743b71e38be6043b9af3a7be35d10ec232b330` |
| 27 | `def` | [equivLim](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/equivlim.md) | 286 | `declaration-track:2c2a301d55dda173231eabf279149448a34261c83f2fc761a8abc4152eb628d2` |
| 28 | `theorem` | [equivLim_coherence](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/equivlim-coherence.md) | 307 | `result-track:ca57a841d4ceb022761b0f46231b0a927e157194c0ce590d445d384ae8eb2bd4` |
| 29 | `def` | [embEquivPi](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/embequivpi.md) | 313 | `declaration-track:678c825926d38cdc535e6bc6e2ba255e500ae138370d15824910abd2d3d025eb` |
| 30 | `theorem` | [cardinal_eq_two_pow_rank](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/cardinal-eq-two-pow-rank.md) | 327 | `result-track:d34fa95ed4f8d1eb9fa615ebc6acff7e625c56ed4d018f728d76f5d37bc8cc19` |
| 31 | `theorem` | [cardinal_eq_of_isSeparable](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/cardinal-eq-of-isseparable.md) | 338 | `result-track:dfb7669e83e81d285bee4446661b784269e6578f259f22bb883112a68453cb97` |
| 32 | `theorem` | [cardinal_eq_two_pow_sepDegree](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/cardinal-eq-two-pow-sepdegree.md) | 346 | `result-track:c1c2f60476fe28da051269a4ad9a6e5bcc1c800d4b7dd64af628328eb2a00ada` |
| 33 | `theorem` | [cardinal_eq](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespacedPublic.lean/declarations/cardinal-eq.md) | 351 | `result-track:9ad140c88eeaff3dd15dcb5016f8ca292103ff7c27697a12736d263b75463528` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f36d78085ace0c20d09a7e562dbffc1ed5b16c352f1aa4526ca131af461dc16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
