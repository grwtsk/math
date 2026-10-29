# Verification target: Lemmas Lemmas Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90102fbc7a80e4dca25c75de152c3aa1eae2538d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/LemmasLemmasPublic.lean/index.md) · [Full source](../../../../NumberTheory/LemmasLemmasPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90102fbc7a80e4dca25c75de152c3aa1eae2538d`.

Source path: `GRWTSK/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean.json)

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
| 1 | `lemma` | [eq_iff](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/eq-iff.md) | 26 | `result-track:be47791d5c7bb482e99859aab07a61672de97b6bf60ad65de05698b9aa7f8c54` |
| 2 | `theorem` | [domRestrict_ofUnitHom](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/domrestrict-ofunithom.md) | 31 | `result-track:5c3a80cd1cf129752e291c3a4c2655537ce3c3d9c1e09192ac981628fe8e7bbd` |
| 3 | `def` | [starComp](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/starcomp.md) | 48 | `declaration-track:9310c931b054ce143c2bf42eb16e598974f0f92fd4244dcfeb656674e68a5d66` |
| 4 | `instance` | [instStarMul](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/inststarmul.md) | 51 | `declaration-track:55b60941aaf48925b6cdf26752b3100361a1c3d3453f1665c09f394f78f02812` |
| 5 | `lemma` | [star_apply](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/star-apply.md) | 61 | `result-track:26c185ef1fdb3796b3b5a3e98a0b27777af91e12273ffa845cbf2bf2de2a4ace` |
| 6 | `lemma` | [apply_mem_rootsOfUnity](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/apply-mem-rootsofunity.md) | 65 | `result-track:3519c6c28782523f1892c5148e5433690f30bc05629bf33de6033107e281d4d9` |
| 7 | `lemma` | [star_eq_inv](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/star-eq-inv.md) | 73 | `result-track:28f252988bbb37d012aaf2323785fcac3acd67a3ce9fea181fa4af986c7fe15b` |
| 8 | `lemma` | [star_apply'](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/star-apply-source-edition-2.md) | 79 | `result-track:9b5f627ce1c668f341f97aa6e48860307a5a58bbee7a67dccfe60cacb671f223` |
| 9 | `def` | [ofRootOfUnity](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/ofrootofunity.md) | 96 | `declaration-track:264333d490461103559f422f6a5edc69811b310a94dfd9d33f585e9893e84e43` |
| 10 | `lemma` | [ofRootOfUnity_spec](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/ofrootofunity-spec.md) | 104 | `result-track:8c4b0c6e9a227f2107f862562892fb28ebea679f140fef8f070089c1ecb13e17` |
| 11 | `def` | [equiv_rootsOfUnity](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/equiv-rootsofunity.md) | 113 | `declaration-track:73e0ccb72ebe2f0dfcf3a37d8df20abb7ad752ba435dc11ee634992bde1d4021` |
| 12 | `lemma` | [exists_mulChar_orderOf](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/exists-mulchar-orderof.md) | 143 | `result-track:0fa74c42f3d6cfaa5351ec4f2fd5d5b18097259b28a0413001f1e55bd4f0c6be` |
| 13 | `lemma` | [orderOf_dvd_card_sub_one](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/orderof-dvd-card-sub-one.md) | 166 | `result-track:860370e9307c436a82e7ba5454399690f7ca9fee24cf371eee2e6d7d35eb2531` |
| 14 | `lemma` | [exists_mulChar_orderOf_eq_card_units](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/exists-mulchar-orderof-eq-card-units.md) | 173 | `result-track:ef72b8701f3e43bcf3b13db6b5d4d607b7c5bafc576333ed5251c94eb8650411` |
| 15 | `lemma` | [apply_mem_rootsOfUnity_orderOf](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/apply-mem-rootsofunity-orderof.md) | 184 | `result-track:725d0874aca15eebf134c6fe09df939ddded327f882842199310bf2f5d67030a` |
| 16 | `lemma` | [apply_mem_rootsOfUnity_of_pow_eq_one](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/apply-mem-rootsofunity-of-pow-eq-one.md) | 195 | `result-track:bf1d9fd5acb0d78b424c41d56772ad505c66c7669f2715ef48f532937fb2a16c` |
| 17 | `lemma` | [exists_apply_eq_pow](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/exists-apply-eq-pow.md) | 206 | `result-track:727b00e81bbb9565723a1ae717cc0395c9fa864e081445268c32585295bda686` |
| 18 | `lemma` | [apply_mem_algebraAdjoin_of_pow_eq_one](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/apply-mem-algebraadjoin-of-pow-eq-one.md) | 216 | `result-track:3164af526246bfaa1b1dc8a9a980b3fcd9bfaa333cdb8dc59d2444cdcb365189` |
| 19 | `lemma` | [apply_mem_algebraAdjoin](../../../../NumberTheory/LemmasLemmasPublic.lean/declarations/apply-mem-algebraadjoin.md) | 228 | `result-track:66a9bb2b646e2a97e6c1b8199559931348868118bd69794e069fedcd70da9855` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b50a2523048aac042385a1ed4f724e90cb5054ee6cac91cf7bcfe48c1e89e4f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean","GRWTSK/_verification/specifications/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
