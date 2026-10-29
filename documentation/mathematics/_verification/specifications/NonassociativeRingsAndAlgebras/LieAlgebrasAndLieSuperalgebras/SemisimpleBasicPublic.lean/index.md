# Verification target: Semisimple Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5327b74f32d99d8cc8502fcac70fc387272ea916",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante9af7f9a3076595553cf87de91147ff56cf855ce2a706851e6085ff2a223963d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5327b74f32d99d8cc8502fcac70fc387272ea916`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante9af7f9a3076595553cf87de91147ff56cf855ce2a706851e6085ff2a223963d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante9af7f9a3076595553cf87de91147ff56cf855ce2a706851e6085ff2a223963d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LieModule.nontrivial_of_isIrreducible](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/liemodule-nontrivial-of-isirreducible.md) | 40 | `result-track:5e278b54997b4ebd3353a980534fa13cd13f95f578d4e07dac6d2bde525e32d8` |
| 2 | `theorem` | [HasTrivialRadical.eq_bot_of_isSolvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/hastrivialradical-eq-bot-of-issolvable.md) | 54 | `result-track:02dc401259fe2dab99717a540debaab453093152a5bf55f0fc9c082eafec05d5` |
| 3 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/instance-source-edition-2.md) | 58 | `declaration-track:21e320c6388b2c4cadef2e77c5216923f3b300f032c252ec903dd7cc50183f28` |
| 4 | `theorem` | [hasTrivialRadical_of_no_solvable_ideals](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/hastrivialradical-of-no-solvable-ideals.md) | 63 | `result-track:0262bc4dd4ffd028af896aea365cfcb62aa39ab2c822d6e29b6f760f2dcd0eaf` |
| 5 | `theorem` | [hasTrivialRadical_iff_no_solvable_ideals](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/hastrivialradical-iff-no-solvable-ideals.md) | 67 | `result-track:38d6640908987a60d6d0479be8193ecdb1703b0e15ed2aa6883bcdf0a7f893b2` |
| 6 | `theorem` | [hasTrivialRadical_iff_no_abelian_ideals](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/hastrivialradical-iff-no-abelian-ideals.md) | 71 | `result-track:50191c0b28a8d3c461f2f0df855cece9a8e3e0ae33fa796396fc3f1005b7f6f3` |
| 7 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/instance.md) | 83 | `declaration-track:0b735488e91c177e567df0ebb044ae7800708194b3b6f2d85d45699c45c75c08` |
| 8 | `lemma` | [nontrivial](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/nontrivial.md) | 92 | `result-track:3de3fe2bd3d85f95dee60d620da7ca9ef169ac554470b983ba9ab980530cb625` |
| 9 | `lemma` | [isAtom_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/isatom-top.md) | 97 | `result-track:3fd92a073d090f0f29f34c8be87df765fb20eeca9347d338b5022e42ec6277c4` |
| 10 | `lemma` | [isAtom_iff_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/isatom-iff-eq-top.md) | 100 | `result-track:61b71f850dc780965186fc31d296faa6b464c26da9428cdfc9eea66a0dce6baf` |
| 11 | `lemma` | [eq_top_of_isAtom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/eq-top-of-isatom.md) | 103 | `result-track:dfae35ef3291357a5e0118b17081f083f38310e631180ea836a379978e42c042` |
| 12 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/instance-source-edition-4.md) | 105 | `declaration-track:9ed86aec64274da6edf92fc1e1eb182ff4c33a60e04ae81daca62d0284b514a5` |
| 13 | `lemma` | [isSimple_iff_of_not_isLieAbelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/issimple-iff-of-not-islieabelian.md) | 115 | `result-track:6a33da343aa010a600a70add68627711460ce327a854bf7772ea04f35ce188b2` |
| 14 | `lemma` | [not_isSimple_of_subsingleton](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/not-issimple-of-subsingleton.md) | 120 | `result-track:c6daa5ca6c9af912ef554d40cf60b5ae58054268af0c2df5a4e2f4a36dae75b6` |
| 15 | `lemma` | [isSimple_of_isAtom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/issimple-of-isatom.md) | 131 | `result-track:d824af48ac4bd0506a57e949868f0aa3b15f8c0e928c2b84a6769b8d00b89bbd` |
| 16 | `lemma` | [finitelyAtomistic](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/finitelyatomistic.md) | 210 | `result-track:e952d06bf684a492ef585797189d2278d6b4ed1ab354af098d03c5b437815b20` |
| 17 | `lemma` | [booleanGenerators](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/booleangenerators.md) | 274 | `result-track:6d5a7d546e34bb50b78bbe78be4f842655bbb81af24baaed3c3b38c08c8feb18` |
| 18 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/instance-source-edition-7.md) | 278 | `declaration-track:c8f420868506f408ea50e17d040c154a3428dce0e1956fb767526b9bef33d222` |
| 19 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/instance-source-edition-6.md) | 282 | `declaration-track:c51bf5664cae1a4be0bf368048064aa6a88b86d85a0dad4121fb45299e31c11d` |
| 20 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/instance-source-edition-3.md) | 286 | `declaration-track:9b8639836a3e073ab8a0c3f12c3e7ac7941a1e39b849593ecb683c15b17eb724` |
| 21 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/instance-source-edition-5.md) | 303 | `declaration-track:c47ee4ab7738d6ce22710579d0e7cb326429fb40906a77820c8d9012a8b4165b` |
| 22 | `theorem` | [subsingleton_of_hasTrivialRadical_lie_abelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/subsingleton-of-hastrivialradical-lie-abelian.md) | 314 | `result-track:2fea2a4667747384677acd6ea9071bfb61c03d4d896acc1b0a47cc272f1e8252` |
| 23 | `theorem` | [abelian_radical_of_hasTrivialRadical](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/abelian-radical-of-hastrivialradical.md) | 319 | `result-track:e6c35eb1ebc468a595f627c0967a158d9e02ecb4e842f1fb5ab6464520122682` |
| 24 | `theorem` | [abelian_radical_iff_solvable_is_abelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/abelian-radical-iff-solvable-is-abelian.md) | 323 | `result-track:fda7e6316d318f9d76749a6d36d6caab0e49c981bd116bf9c3ff21ff17e408f5` |
| 25 | `theorem` | [ad_ker_eq_bot_of_hasTrivialRadical](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SemisimpleBasicPublic.lean/declarations/ad-ker-eq-bot-of-hastrivialradical.md) | 333 | `result-track:ec29dc21fc7bb14d1af8ef1a33d3997016b8278a377f220e1c2042f5ce3090fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2f80032598d860acf751371923493391c8a3d3a6976465792cbdadf3f5924c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante9af7f9a3076595553cf87de91147ff56cf855ce2a706851e6085ff2a223963d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante9af7f9a3076595553cf87de91147ff56cf855ce2a706851e6085ff2a223963d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
