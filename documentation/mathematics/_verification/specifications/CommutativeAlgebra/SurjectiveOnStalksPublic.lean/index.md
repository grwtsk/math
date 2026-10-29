# Verification target: Surjective On Stalks Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd14de14123cbc177410b4aa595cda5031d74060",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SurjectiveOnStalks/Variantf3184af9e797fdaf936d2b78b7641e56702556b1b83d236d0a99e18abdd11846.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd14de14123cbc177410b4aa595cda5031d74060`.

Source path: `GRWTSK/Algebra/SurjectiveOnStalks/Variantf3184af9e797fdaf936d2b78b7641e56702556b1b83d236d0a99e18abdd11846.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SurjectiveOnStalks/Variantf3184af9e797fdaf936d2b78b7641e56702556b1b83d236d0a99e18abdd11846.lean.json)

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
| 1 | `def` | [SurjectiveOnStalks](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjectiveonstalks.md) | 35 | `declaration-track:889fedcb38ec733192466c4840ce1056bbcfab3663fecfcbc6f13ec30acfdb5a` |
| 2 | `lemma` | [surjective_localRingHom_iff](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjective-localringhom-iff.md) | 43 | `result-track:ccbb319d560cd754ca5bceab92ea52cee1f0df0582636d0c7af8ee3cf5afd7f5` |
| 3 | `lemma` | [surjectiveOnStalks_iff_forall_ideal](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjectiveonstalks-iff-forall-ideal.md) | 67 | `result-track:2a872ee313c58b0abce2b0a1114824b6311d961ce5ef8bcbc222a2ec008a3dfd` |
| 4 | `lemma` | [surjectiveOnStalks_iff_forall_maximal](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjectiveonstalks-iff-forall-maximal.md) | 76 | `result-track:5d72f08a51d2dbb8ffebf70ea64214d573e87fbdcb59b8cafd81ff3c2046a668` |
| 5 | `lemma` | [surjectiveOnStalks_iff_forall_maximal'](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjectiveonstalks-iff-forall-maximal-source-edition-2.md) | 86 | `result-track:6606837e94c021d32b6400a38c943665b164718f6f94ae3305a686df56863916` |
| 6 | `lemma` | [surjectiveOnStalks_of_exists_div](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjectiveonstalks-of-exists-div.md) | 91 | `result-track:577acc3d9f3eab2af0eae4399a3b5536e8edc1cb36f7491d3c62776e3bf4fa7e` |
| 7 | `lemma` | [surjectiveOnStalks_of_surjective](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjectiveonstalks-of-surjective.md) | 97 | `result-track:a4f83f49784540a8b2bd98f80490d0d47b6147c2a5028f78f322fab8e65a951a` |
| 8 | `lemma` | [_root_.RingEquiv.surjectiveOnStalks](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/root-ringequiv-surjectiveonstalks.md) | 103 | `result-track:0e6b3da250c001829cba9ccca67481954e27504c18a4f546da4730b7c07193b1` |
| 9 | `lemma` | [SurjectiveOnStalks.comp](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjectiveonstalks-comp.md) | 107 | `result-track:09ee21e522eda51c849e3639fa8f4179c7f48f648b8e0808960d54272c98a6d0` |
| 10 | `lemma` | [SurjectiveOnStalks.of_comp](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjectiveonstalks-of-comp.md) | 113 | `result-track:c3ddb99b2846a3f9207dbfb4bbfbd5b384feb8edc03f06a95e51d12e3c5263ce` |
| 11 | `lemma` | [SurjectiveOnStalks.localRingHom_surjective](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjectiveonstalks-localringhom-surjective.md) | 121 | `result-track:ce0c845224ed40a0194d120884edbc83b3d85b36c7f18fc09d40295ec33e50ad` |
| 12 | `lemma` | [SurjectiveOnStalks.exists_mul_eq_tmul](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjectiveonstalks-exists-mul-eq-tmul.md) | 134 | `result-track:36b6a69f30f5c990fc753e3799222b8feaa10b425d9d365d8c2a220740333014` |
| 13 | `lemma` | [surjectiveOnStalks_of_isLocalization](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjectiveonstalks-of-islocalization.md) | 159 | `result-track:08239226982426ccad17f533a43efa371f97731366807a40d41c1a8440e54e37` |
| 14 | `lemma` | [SurjectiveOnStalks.baseChange](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjectiveonstalks-basechange.md) | 166 | `result-track:0f407ec10a14e42993e37f4f0d4c077ee99aef73a4c04e6e9827838981b83d26` |
| 15 | `lemma` | [SurjectiveOnStalks.baseChange'](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjectiveonstalks-basechange-source-edition-2.md) | 186 | `result-track:b97cbe7919c9fac1838d364a88bcd8134ef46cddebc46d25e1e97174aedcbe6f` |
| 16 | `lemma` | [SurjectiveOnStalks.tensorProductMap_id](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjectiveonstalks-tensorproductmap-id.md) | 196 | `result-track:2285fd430963ef5a925ce08b5a424597a9d85d61b72908bb3172b6565a272feb` |
| 17 | `lemma` | [SurjectiveOnStalks.tensorProductMap](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjectiveonstalks-tensorproductmap.md) | 209 | `result-track:4e4f0a59ac519bbbd35835006de501265821082fde83bd2dea78111bd23d0b5b` |
| 18 | `lemma` | [surjectiveOnStalks_iff_of_isLocalHom](../../../../CommutativeAlgebra/SurjectiveOnStalksPublic.lean/declarations/surjectiveonstalks-iff-of-islocalhom.md) | 224 | `result-track:e268865fe681c54ccb17afc7b7525a5d47e19b906fa0e963bb94399cba9ef3b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f31aa749793a831ac509480f3cf4621747182c12d240c581ab23cd2eafd1bdfe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/SurjectiveOnStalks/Variantf3184af9e797fdaf936d2b78b7641e56702556b1b83d236d0a99e18abdd11846.lean","GRWTSK/_verification/specifications/Algebra/SurjectiveOnStalks/Variantf3184af9e797fdaf936d2b78b7641e56702556b1b83d236d0a99e18abdd11846.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
