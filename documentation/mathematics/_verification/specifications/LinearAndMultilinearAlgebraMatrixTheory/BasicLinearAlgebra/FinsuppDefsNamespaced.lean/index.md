# Verification target: Finsupp Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87840a71c3ab2545805001c548ae52df673cfa6f",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantb33c90759e19e98ebcb02412c893c09b6bc0e754eb657abf47c18c436d8edb73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87840a71c3ab2545805001c548ae52df673cfa6f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variantb33c90759e19e98ebcb02412c893c09b6bc0e754eb657abf47c18c436d8edb73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variantb33c90759e19e98ebcb02412c893c09b6bc0e754eb657abf47c18c436d8edb73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.SMul` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linearEquivFunOnFinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/linearequivfunonfinite.md) | 64 | `declaration-track:193520f9c33ff4d8d631103b95a51ae829e056aa4cea148302fbdfe5690a1b0a` |
| 2 | `theorem` | [linearEquivFunOnFinite_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/linearequivfunonfinite-single.md) | 71 | `result-track:350035d02315469ee49ae5ca16bd7cde2cf070f7da6b69c445d384356bee2c1f` |
| 3 | `theorem` | [linearEquivFunOnFinite_symm_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/linearequivfunonfinite-symm-single.md) | 76 | `result-track:2c137f4b7020d20a6737cba681c3d8969c4f600e26f8e71945ef3166b07d38ba` |
| 4 | `theorem` | [linearEquivFunOnFinite_symm_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/linearequivfunonfinite-symm-coe.md) | 81 | `result-track:ebee5fd04ae22110b7f953ba42600994b533a20348dcf467a955a35e87341462` |
| 5 | `def` | [lsingle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/lsingle.md) | 87 | `declaration-track:2d95508fcb9022d7f95be81896e160e4501bcf6352f507bdc63bb60ac04bf6a0` |
| 6 | `theorem` | [lhom_ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/lhom-ext.md) | 91 | `result-track:5b3a8e7c9e75739ae2bf23a5d05a8c674e4f0c481854b161c0be207ec9a7ad02` |
| 7 | `theorem` | [lhom_ext'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/lhom-ext-source-edition-2.md) | 101 | `result-track:a2fb4a3e1662e5437e027554dfe7a676bbedb3e4c81c356f90a55aa70c5da753` |
| 8 | `def` | [lapply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/lapply.md) | 106 | `declaration-track:942268c8ef1a78d6373386dc6f3defa41044ddf480310abb2ad9b8e48b51d2fa` |
| 9 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/instance.md) | 109 | `declaration-track:a15a6fd621279146af0ecccba127346ec7d17c9e5cb0171f02b4d011f8042d82` |
| 10 | `def` | [lsubtypeDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/lsubtypedomain.md) | 117 | `declaration-track:f25873c4de1f5be49e7e3dbe2ba77dd36188478ad74ab133e973299ddb3effbd` |
| 11 | `theorem` | [lsubtypeDomain_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/lsubtypedomain-apply.md) | 122 | `result-track:671725ab5d645780330cc304a42d327c341cd253e296746bf8f792b61bc3ffcc` |
| 12 | `theorem` | [lsingle_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/lsingle-apply.md) | 129 | `result-track:9af9e75cb9d18331947368a1704049429355b832dd56b9ab0e177cc77f9dd300` |
| 13 | `theorem` | [lapply_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/lapply-apply.md) | 133 | `result-track:3a03b15eb1b619244d39263af8df59be55cf0370e3f6a5e815395f8cd0fb2143` |
| 14 | `theorem` | [lapply_comp_lsingle_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/lapply-comp-lsingle-same.md) | 137 | `result-track:91c79a684370dce192db9a05d5ccb46947d1737d5f42d6afac0194f572cf25ff` |
| 15 | `theorem` | [lapply_comp_lsingle_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/lapply-comp-lsingle-of-ne.md) | 140 | `result-track:42f1924340d4fc97beb26a5227f892535390ca25e0556ed93d38e8fcd8ddcb48` |
| 16 | `def` | [lmapDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/lmapdomain.md) | 148 | `declaration-track:b3ce0e31d995f369125fa9226fb5d79be8ce93325c5c5ddd3f72b444188c2ddd` |
| 17 | `theorem` | [lmapDomain_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/lmapdomain-apply.md) | 154 | `result-track:8cd62ccbee4affeb93b79c07ca1c168c2bd006c96c22bf447b286a13cc332db3` |
| 18 | `theorem` | [lmapDomain_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/lmapdomain-id.md) | 159 | `result-track:a609ef58a5ab5fc833b84c6677ed31498543746cf9231789c10d108518df8f02` |
| 19 | `theorem` | [lmapDomain_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/lmapdomain-comp.md) | 162 | `result-track:2222f6288b46b5553176416c3a2a7cce4d9e018bcc1f823879eb604af0c7e1ba` |
| 20 | `def` | [lcomapDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/lcomapdomain.md) | 178 | `declaration-track:1848fdf3255bade77321e021a75299b3a5d9e38a8d202ecd1be37a7617a7e78d` |
| 21 | `theorem` | [leftInverse_lcomapDomain_mapDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/leftinverse-lcomapdomain-mapdomain.md) | 183 | `result-track:92edf75f52fdc29b6abebd28f78e70bbb7fd130853c95ac5bd5d2114e0f14b1e` |
| 22 | `def` | [mapRange.linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/maprange-linearmap.md) | 191 | `declaration-track:a296add80715fa6b07fbd9de880824ead13e709df955325e71d5bdf3491e9b63` |
| 23 | `theorem` | [mapRange.linearMap_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/maprange-linearmap-id.md) | 197 | `result-track:0174ce23bd17c41fba36c0fa82b36022e657c8f6a90f4fcba32a30bbacb9df97` |
| 24 | `theorem` | [mapRange.linearMap_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/maprange-linearmap-comp.md) | 201 | `result-track:0dea3887d54b026f34d9a0cc84ce966f61c9944fd9587038d0c4dbec6d4613e2` |
| 25 | `theorem` | [mapRange.linearMap_toAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/maprange-linearmap-toaddmonoidhom.md) | 207 | `result-track:064ca0146cabf6de9b799dfbd00438f4b6ef11ff57141fc4e95dcf55191ca023` |
| 26 | `def` | [mapRange.linearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/maprange-linearequiv.md) | 220 | `declaration-track:dddb097dd9cb8cc4985fbe247b810186ed5906361b403e30e6e045aa84625ec6` |
| 27 | `theorem` | [mapRange.linearEquiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/maprange-linearequiv-refl.md) | 227 | `result-track:50d4638d99a0672713b777466078418c57d5f709e8517806ee63417dcdde33c1` |
| 28 | `theorem` | [mapRange.linearEquiv_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/maprange-linearequiv-trans.md) | 231 | `result-track:11e4de2e24fb4f3555b1ec487f87585cb5bf60eefe9f0061f901f8c99fba81ba` |
| 29 | `theorem` | [mapRange.linearEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/maprange-linearequiv-symm.md) | 237 | `result-track:80f21b533f1bc384234a3ceb8274983dbf4c92d5e8a57abfd2484bfe1669b2bc` |
| 30 | `theorem` | [mapRange.linearEquiv_toAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/maprange-linearequiv-toaddequiv.md) | 243 | `result-track:5c542d59a4787557df535058edfa2ee6f01f74318ccdd25a5deacebec5b369ae` |
| 31 | `theorem` | [mapRange.linearEquiv_toLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/maprange-linearequiv-tolinearmap.md) | 248 | `result-track:3ee1b7556c227979fb31118c306781c066491c90743837be42eca32a5044502c` |
| 32 | `def` | [finsuppProdLEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/finsuppprodlequiv.md) | 264 | `declaration-track:7f6bed9c6c0f3e1e0b739b6ea3cfe36d17f06f00e0b4a2289c14d752e07b3385` |
| 33 | `theorem` | [finsuppProdLEquiv_symm_apply_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/finsuppprodlequiv-symm-apply-apply.md) | 269 | `result-track:271e51bcd5ad475f89c5596955a590b6c89e161c2aeae9e11f1dfa0f699db6f8` |
| 34 | `def` | [Module.subsingletonEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespaced.lean/declarations/module-subsingletonequiv.md) | 288 | `declaration-track:553e5a924aab02cc907b280f6d8d328d5792da75318ab1af12658ba64a5ae8fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a697827ecd921769576245becc110245432f322c329967211d906f977365036 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variantb33c90759e19e98ebcb02412c893c09b6bc0e754eb657abf47c18c436d8edb73.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variantb33c90759e19e98ebcb02412c893c09b6bc0e754eb657abf47c18c436d8edb73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
