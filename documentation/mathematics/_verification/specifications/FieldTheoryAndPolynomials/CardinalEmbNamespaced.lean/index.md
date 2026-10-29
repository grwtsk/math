# Verification target: Cardinal Emb Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9af5720d96e0495cfcc4308fcd0bb65f98e07f10",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5551e0ed34ca273412c57a824f71137cef3193b8691679c3a78d57da4a4bdd01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9af5720d96e0495cfcc4308fcd0bb65f98e07f10`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5551e0ed34ca273412c57a824f71137cef3193b8691679c3a78d57da4a4bdd01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5551e0ed34ca273412c57a824f71137cef3193b8691679c3a78d57da4a4bdd01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.SeparableClosure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PurelyInseparable.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeAlgebra` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.WithBotTop` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.DirectedInverseSystem` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/instance-source-edition-5.md) | 92 | `declaration-track:efedd2ecc56e32f20a352770b12462ef3b31162aefe5997072d49cab9949f8a4` |
| 2 | `def` | [wellOrderedBasis](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/wellorderedbasis.md) | 96 | `declaration-track:e5c2ffb666a1cf780eb22ef2875ee7d95f9aec4e92d173bb7c0f01219ce0d8db` |
| 3 | `theorem` | [adjoin_basis_eq_top](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/adjoin-basis-eq-top.md) | 105 | `result-track:329f42cc395243c779ae0e6016c27027b3c387a4e6970cabf20763d65f89b1a4` |
| 4 | `lemma` | [noMaxOrder_rank_toType](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/nomaxorder-rank-totype.md) | 113 | `result-track:cd6794c3eee2c728a77de6cb12cb77f23049bdd36d2077f46b06618f86e1f918` |
| 5 | `def` | [leastExt](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/leastext.md) | 123 | `declaration-track:6fed6bcf9eafdd8a4f0825229cef26f3af6725831df9207f4a5d605930a07986` |
| 6 | `theorem` | [isLeast_leastExt](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/isleast-leastext.md) | 150 | `result-track:80a4c75359808124418c2c2f129769ead4e46a9c7ab0395d8678f3071697362f` |
| 7 | `theorem` | [strictMono_leastExt](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/strictmono-leastext.md) | 154 | `result-track:4fe67e55a63d74d4c8787903026694726e3dfd05bcfee0354b9526022b9925f2` |
| 8 | `theorem` | [adjoin_image_leastExt](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/adjoin-image-leastext.md) | 162 | `result-track:6f8683e3090e4b73b1abd499faead7ce87b0cefdcc7236a3cba9ef563c5dbfa8` |
| 9 | `theorem` | [iSup_adjoin_eq_top](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/isup-adjoin-eq-top.md) | 167 | `result-track:e64e2ca266f6be523a62946573e2f9c2772c172454a0179547d1beb6dea7b3df` |
| 10 | `theorem` | [strictMono_filtration](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/strictmono-filtration.md) | 173 | `result-track:976da879bdd2917beff8b28bc4c0d028f3d67fcc6de30194d960091fbe4a8c7b` |
| 11 | `theorem` | [filtration_succ](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/filtration-succ.md) | 177 | `result-track:46e4484892e4b891e42da9ce5fece32d12e41cc86556c0f0bd8daf706a27da57` |
| 12 | `def` | [succEquiv](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/succequiv.md) | 183 | `declaration-track:7d885130cddd94121136de154e40af12583afa35a9a56ca52b7c0d6fa4a72cf8` |
| 13 | `theorem` | [succEquiv_coherence](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/succequiv-coherence.md) | 189 | `result-track:65e7cc779423f1e9fb9816434a2e926cf4fc69beb9ead8dfb7832e190b828fcc` |
| 14 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/instance.md) | 193 | `declaration-track:837c32e013c96e103c2367c67edb7b1d4459e7bad8cc7a78ee0400f74914381d` |
| 15 | `theorem` | [deg_lt_aleph0](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/deg-lt-aleph0.md) | 196 | `result-track:e00b72a8e7d8257a820db951ac32ee3c15c0833f95a8899e116ba213070e8a75` |
| 16 | `def` | [filtration](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/filtration.md) | 201 | `declaration-track:3772ec0f8d9328d36fbcfdde8abfc5471aeb5783dbb12aa1371035fffa5ad1bc` |
| 17 | `def` | [factor](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/factor.md) | 210 | `declaration-track:3a8a90e861761c75b33d0e39387268490d13e1e403231f9216ae46792ecc284b` |
| 18 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/instance-source-edition-2.md) | 215 | `declaration-track:8bc86874fb51fa53791d8cc2c1d716570f0119fbb6384c989b3e924293067f8a` |
| 19 | `theorem` | [two_le_deg](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/two-le-deg.md) | 221 | `result-track:a211dd570e1b9d034493e57edccee346376623354d08b1874cc64996afd53383` |
| 20 | `def` | [embFunctor](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/embfunctor.md) | 235 | `declaration-track:e89f17e146d11362955dbbe1dd7da7df85722d134b6dab9d0ca08288e13cdbb3` |
| 21 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/instance-source-edition-4.md) | 238 | `declaration-track:eef1731a807f2b13d89355f30f44f970dcf4060ed814475bbe447fee96f553b0` |
| 22 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/instance-source-edition-3.md) | 242 | `declaration-track:c78796b1301087986c139c45f445f72827f9d334e91ca4df022465f6e8608e36` |
| 23 | `def` | [equivSucc](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/equivsucc.md) | 245 | `declaration-track:f7050f71db0da4524d8ee7e9eda63c3140a1180639c31e06bba8f93351691e0f` |
| 24 | `theorem` | [equivSucc_coherence](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/equivsucc-coherence.md) | 249 | `result-track:6aba3c09333fecb15d69d8fb12c71d272e71f74c781f497ac33d70d6a94f1187` |
| 25 | `theorem` | [directed_filtration](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/directed-filtration.md) | 256 | `result-track:7b273ec090dcb122184d2fae97ce1193207916c1385bdd5e27f84237a0eed363` |
| 26 | `theorem` | [iSup_filtration](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/isup-filtration.md) | 263 | `result-track:038fc7499594e731bea3dfa6322fb926dfd3db344fda2472ceadbfbe86b90b24` |
| 27 | `lemma` | [eq_bot_of_not_nonempty](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/eq-bot-of-not-nonempty.md) | 273 | `result-track:e20a8ebbee71411259da4a14b9e083448c226e4fe91299427b1e134ccd804b65` |
| 28 | `def` | [equivLim](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/equivlim.md) | 282 | `declaration-track:5f538bb0a4fdede75d348ad91219ccce4891c7bf8e8d15ee19d8da2500ae61da` |
| 29 | `theorem` | [equivLim_coherence](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/equivlim-coherence.md) | 303 | `result-track:c8bfee755e9bd6cad5efc52b341c106d419eb617d06c795a84395055c1ff8893` |
| 30 | `def` | [embEquivPi](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/embequivpi.md) | 309 | `declaration-track:6d16268ac97c028258d5101ede024272e9c2f6936d9d7206e5f680a2c6f34009` |
| 31 | `theorem` | [cardinal_eq_two_pow_rank](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/cardinal-eq-two-pow-rank.md) | 323 | `result-track:c5b3786fb2c3e74070a5c2501418c658a0bebd918270148f9a7da57cb089b351` |
| 32 | `theorem` | [cardinal_eq_of_isSeparable](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/cardinal-eq-of-isseparable.md) | 334 | `result-track:f676ab2d4ba3c58a115e5112ac3eb7f7c0ac28f3e1c52daa7fd308674764e51a` |
| 33 | `theorem` | [cardinal_eq_two_pow_sepDegree](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/cardinal-eq-two-pow-sepdegree.md) | 342 | `result-track:826c839d48b1fe9ccea28b1bd4a412ddb4aaf09b07127b67f904f78d2747f333` |
| 34 | `theorem` | [cardinal_eq](../../../../FieldTheoryAndPolynomials/CardinalEmbNamespaced.lean/declarations/cardinal-eq.md) | 347 | `result-track:2bda519c6bbf62811b4891c8b8410a1f9ddee4c02d24c4fd09b88558b3b94a5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c69209fe2a8a1d9240b42ca968f65e70255bcd03dde990b9805b541d049289ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5551e0ed34ca273412c57a824f71137cef3193b8691679c3a78d57da4a4bdd01.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5551e0ed34ca273412c57a824f71137cef3193b8691679c3a78d57da4a4bdd01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
