# Verification target: Norm Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10a05df9e7abbcfb0d93d0ace2094e29bad80232",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant339b46b1e3504eb136803c8bf1fc8472b57258a118b844bceac2f45579847343.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NormBasicPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NormBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10a05df9e7abbcfb0d93d0ace2094e29bad80232`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant339b46b1e3504eb136803c8bf1fc8472b57258a118b844bceac2f45579847343.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant339b46b1e3504eb136803c8bf1fc8472b57258a118b844bceac2f45579847343.lean.json)

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
| 1 | `theorem` | [PowerBasis.norm_gen_eq_coeff_zero_minpoly](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/powerbasis-norm-gen-eq-coeff-zero-minpoly.md) | 65 | `result-track:3fa57fc82c361d181c99bd71da2183cb26a0983572067b37c5da43a4e8511a61` |
| 2 | `theorem` | [PowerBasis.norm_gen_eq_prod_roots](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/powerbasis-norm-gen-eq-prod-roots.md) | 72 | `result-track:30f3875b8a1ea8201e9d92f44809cfe73e199ea8e5d7ceb64752be3c22d85c1e` |
| 3 | `theorem` | [norm_zero](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/norm-zero.md) | 90 | `result-track:cd8ea626b3445fc4b96ca75ee2ff03d3969888114fbd263d659da137d4d2a64a` |
| 4 | `theorem` | [norm_eq_zero_iff](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/norm-eq-zero-iff.md) | 95 | `result-track:cf6d7324298ab994fa48709187f5514282e2f7b5f80f0949d0817c1322cd5950` |
| 5 | `theorem` | [norm_ne_zero_iff](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/norm-ne-zero-iff.md) | 112 | `result-track:e3b5c0ff295354be1f0a86d9b4a78f5f6ff11af939ccecab13d33a4f8f9edcf3` |
| 6 | `theorem` | [norm_eq_zero_iff'](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/norm-eq-zero-iff-source-edition-2.md) | 117 | `result-track:dfb64bb308d67ede01d3b77ff8dfbfd5d5644254e3dd00948cc197550f7127cd` |
| 7 | `theorem` | [norm_eq_zero_iff_of_basis](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/norm-eq-zero-iff-of-basis.md) | 120 | `result-track:108b2462b0fccef40326bedfceac26ba304a8caac9d59b6239455dae4033b7dc` |
| 8 | `theorem` | [norm_ne_zero_iff_of_basis](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/norm-ne-zero-iff-of-basis.md) | 126 | `result-track:73d7802485a1ec0700f724766c3f2e7621c915ed7a3c3371483c4daf2f252041` |
| 9 | `theorem` | [norm_inv](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/norm-inv.md) | 136 | `result-track:38acef9cf46f2d52c4a73e3df5fb90257bcae42647c3f6ff1e65492afa4b8ac2` |
| 10 | `theorem` | [norm_zpow](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/norm-zpow.md) | 141 | `result-track:eb8c3995a4f4ee0c3aed076b4d9674bee7e144d7ff9b6254fe59320ba8041550` |
| 11 | `theorem` | [_root_.IntermediateField.AdjoinSimple.norm_gen_eq_one](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/root-intermediatefield-adjoinsimple-norm-gen-eq-one.md) | 150 | `result-track:f4de0a8e8ea2ddc316056a2108137c7d2df74ffde8d3a46f2f52b9f15fe96bb7` |
| 12 | `theorem` | [_root_.IntermediateField.AdjoinSimple.norm_gen_eq_prod_roots](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/root-intermediatefield-adjoinsimple-norm-gen-eq-prod-roots.md) | 159 | `result-track:36803599a5532a49aab887fc5fcb764c800aef707975b461bf10cf49bf2d5261` |
| 13 | `theorem` | [norm_eq_prod_embeddings_gen](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/norm-eq-prod-embeddings-gen.md) | 178 | `result-track:c5fceec14193c853b01871df5712caa5dd1ac6f50912df41ee68a1872c196a11` |
| 14 | `theorem` | [prod_embeddings_eq_finrank_pow](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/prod-embeddings-eq-finrank-pow.md) | 192 | `result-track:a8a45c33c92afad4ce621819eb0bba8925fc4553c542ba6152a333db2a027859` |
| 15 | `lemma` | [norm_eq_of_algEquiv](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/norm-eq-of-algequiv.md) | 211 | `result-track:63b4d5934a081558b2f5e31827764b450450948504e116047210e7f107ad419f` |
| 16 | `lemma` | [norm_eq_of_ringEquiv](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/norm-eq-of-ringequiv.md) | 216 | `result-track:54535296950ab9240708f0441ee955d07ce1bddb458afc60126368091d5393e0` |
| 17 | `lemma` | [norm_eq_of_equiv_equiv](../../../../CommutativeAlgebra/NormBasicPublic.lean/declarations/norm-eq-of-equiv-equiv.md) | 235 | `result-track:8574fcf731825704de3d0fb60419acdc7d5eff8c68dd90f68a91c39f42db4fa3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39366418fc718744e685c5efd2a9fe442447db9a3997f6c69845c228f943de58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant339b46b1e3504eb136803c8bf1fc8472b57258a118b844bceac2f45579847343.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant339b46b1e3504eb136803c8bf1fc8472b57258a118b844bceac2f45579847343.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
