# Verification target: Mv Polynomial Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fe752ee06ac972ea7a212019451b2c51ca8902c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta60b075afe97f39840a561d17469ffe273168ddedb991e92d8b365d8d73c429a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fe752ee06ac972ea7a212019451b2c51ca8902c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Varianta60b075afe97f39840a561d17469ffe273168ddedb991e92d8b365d8d73c429a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Varianta60b075afe97f39840a561d17469ffe273168ddedb991e92d8b365d8d73c429a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Degrees` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Small` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.VectorSpace` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 57 | `declaration-track:b33ff6134ecb2fc197ad80d7396d8b7fc9d49db1ed59999941de947e6caa6081` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 64 | `declaration-track:959f192c3e25e889d40ff54ea5211451b42b04e8bccd8734f1e48a9b6eaea9ad` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 71 | `declaration-track:c0947e1ad7a211e2dbd8fc1b7cee6e6bfeb6f693c443d074e3e446cabe18ce8a` |
| 4 | `theorem` | [mapRange_eq_map](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/maprange-eq-map.md) | 78 | `result-track:b9147c1db7a1f6e04d4d2fe7951de937c8e03f3c3f36ffa3591e99cccd5a773d` |
| 5 | `def` | [restrictSupport](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/restrictsupport.md) | 91 | `declaration-track:3885d022f121aa70b26e01be62c99938988dbfafbf9b134a96a5abf153dda6e5` |
| 6 | `def` | [basisRestrictSupport](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/basisrestrictsupport.md) | 95 | `declaration-track:e0d7e8d425be0df555ac6c2eb4c5a5d36c746b75ecf0924cdda971ab582eaeb8` |
| 7 | `theorem` | [restrictSupport_mono](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/restrictsupport-mono.md) | 98 | `result-track:2a7d6b1577e4b528307cd4956ba820f5444e3486d44d53584dfc568728f86f94` |
| 8 | `def` | [restrictTotalDegree](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/restricttotaldegree.md) | 104 | `declaration-track:5300c0579d1ee1059900693eceafc7d868bf29b8ea9063dad1b32a64b05bf106` |
| 9 | `def` | [restrictDegree](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/restrictdegree.md) | 109 | `declaration-track:ed5b626909b4e0dc451e1beea03b746da65cfcfb9460225b4961a6c066b855e5` |
| 10 | `theorem` | [mem_restrictTotalDegree](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/mem-restricttotaldegree.md) | 114 | `result-track:adf28e1eee3ed54b18ae2c62abb3cb0ddcb5fea8f333c2bcb21f37e4d2124eb8` |
| 11 | `theorem` | [mem_restrictDegree](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/mem-restrictdegree.md) | 119 | `result-track:b6d6dcb4b1ab3c70b6e8490b9b37d0c0dc1c28cdebd2ac2f4496bd0cde01be54` |
| 12 | `theorem` | [mem_restrictDegree_iff_sup](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/mem-restrictdegree-iff-sup.md) | 124 | `result-track:1c397cd8fadf5860b9dd96b80939c68869e1242afe068a8ab6634aff541366b1` |
| 13 | `theorem` | [restrictTotalDegree_le_restrictDegree](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/restricttotaldegree-le-restrictdegree.md) | 132 | `result-track:c6f8ec3893276049db55e8541dd74867298a146608f5d149229af5d7635e634e` |
| 14 | `def` | [basisMonomials](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/basismonomials.md) | 138 | `declaration-track:4f9a011adb7128807fc6840c2c1ef03e46741fe3637939f2758ccffd0fcf8347` |
| 15 | `theorem` | [coe_basisMonomials](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/coe-basismonomials.md) | 142 | `result-track:2fbdb5b4f8d0b6e2f14675b9525784b31c37566f2dd817d354d52186b20197df` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/instance.md) | 147 | `declaration-track:15159ff8e5333e1a2ae3f9bcf58ceae192d568e274004405d35229ddbe9397a4` |
| 17 | `theorem` | [linearIndependent_X](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/linearindependent-x.md) | 150 | `result-track:ae68bc9c30654343d3d1537cf2371161da4da468bc6c64d0ab806f4f3a44639c` |
| 18 | `lemma` | [finite_setOf_bounded](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/finite-setof-bounded.md) | 154 | `result-track:ef9ad6a6a1bb48d286a7df9ed570969b86b318b1d7f83daa2ebe44c6d52ea0f5` |
| 19 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 157 | `declaration-track:1be34f87908ceec8c30cbfba1076b0920c468155d47fad957aa32a05c51716dd` |
| 20 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPolynomialBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 161 | `declaration-track:c88a5507b8aa3440c041f70a6248b14edd6d4d838f2baf86790d70556bcc906c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f157d9cdb91806dac801f26cd37444b75f05219a6bb1c12bc50c251f0fc27532 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Varianta60b075afe97f39840a561d17469ffe273168ddedb991e92d8b365d8d73c429a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Varianta60b075afe97f39840a561d17469ffe273168ddedb991e92d8b365d8d73c429a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
