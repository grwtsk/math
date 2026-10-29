# Verification target: Monoidal Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c8fd19fcb494657df3bf013f7250e665d1d80d5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Monoidal/Variantca7162c25209e5d2041f07b08e3524bc9892f5753e17dccfe0dd1058638b4215.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c8fd19fcb494657df3bf013f7250e665d1d80d5`.

Source path: `GRWTSK/Algebra/Monoidal/Variantca7162c25209e5d2041f07b08e3524bc9892f5753e17dccfe0dd1058638b4215.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Monoidal/Variantca7162c25209e5d2041f07b08e3524bc9892f5753e17dccfe0dd1058638b4215.lean.json)

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
| 1 | `def` | [binaryCofan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/binarycofan.md) | 33 | `declaration-track:3bb2e673aa1f191058b1cc1d1fff7717627bf32da12a855e32dd29e9626ba68b` |
| 2 | `lemma` | [binaryCofan_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/binarycofan-inl.md) | 35 | `result-track:e99b03648dcaab7b1028047aa750c1574e26c2b1fa76f8ca691c0fb749d77616` |
| 3 | `lemma` | [binaryCofan_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/binarycofan-inr.md) | 36 | `result-track:b187eaeba29efef4c59cdbaac8fd96ef383229229f9f99041605b8e07f20a7cd` |
| 4 | `lemma` | [binaryCofan_pt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/binarycofan-pt.md) | 37 | `result-track:fcb3feb7e65ef248fb8332d5a8a3378ff1128a1901d3297dae3af5c619c4cdaf` |
| 5 | `def` | [binaryCofanIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/binarycofaniscolimit.md) | 40 | `declaration-track:e4e9dba23ca96dfe052174b7006ebb401612105061535d550d82196352342b62` |
| 6 | `def` | [isInitialSelf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/isinitialself.md) | 51 | `declaration-track:36579e2461e85045ab774bf06870009c0e6e68a6ee5197adf1c17f7b9bd0d2ee` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/instance-source-edition-2.md) | 55 | `declaration-track:2cb7affcec6cc278f218b1c6f7b5656fbc41b5ea8c2b8f6616cf35a36653534f` |
| 8 | `lemma` | [coe_tensorUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/coe-tensorunit.md) | 65 | `result-track:d948b7d038a763ac362e65a1f1bcdc32c8ea4279cb12c8914a19917ad44824ba` |
| 9 | `lemma` | [coe_tensorObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/coe-tensorobj.md) | 67 | `result-track:fbd00c7c5e14ae50e67e0bae0f794cc632b387a0cfad243265fd40b2a71677ea` |
| 10 | `lemma` | [tensorHom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/tensorhom-hom.md) | 71 | `result-track:738e86f6732f1cff4c8eb0e6a295736a345b90e8d5a1ec7562fa37a8646b34ca` |
| 11 | `lemma` | [whiskerRight_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/whiskerright-hom.md) | 74 | `result-track:8b13eb090b1e4583db7f5015997f243e69f5483fd7547251dc883dccfb612d32` |
| 12 | `lemma` | [whiskerLeft_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/whiskerleft-hom.md) | 77 | `result-track:6131641e3dd943b7dcf141c6f5d450e3cd533ae41d54baf76923ab308cf9e039` |
| 13 | `lemma` | [associator_hom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/associator-hom-hom.md) | 80 | `result-track:27fc505d5f561cbf9cad8f7c930c2b4f3376db490472b187f5fa0ed0a48f6e93` |
| 14 | `lemma` | [associator_inv_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/associator-inv-hom.md) | 83 | `result-track:c9b9417537c3ce382a43daa5a127d900fbdf2cce6002d76ec4e8d3e24ed5d629` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/instance-source-edition-3.md) | 85 | `declaration-track:7cce356c52dc861a1ae585856530a000ebb242707d1a297d2fc1ddf4c9fe17c9` |
| 16 | `lemma` | [braiding_hom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/braiding-hom-hom.md) | 93 | `result-track:48f0915561532b79ca2b4a8d7dd108a6af1e19132f3a4b6c1fadca8e18d2ec9a` |
| 17 | `lemma` | [braiding_inv_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/braiding-inv-hom.md) | 96 | `result-track:a99d907525e753ee6eb0720c8d0fdfb9d6cb10c1307855edb93cc0838e7f5cb8` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/instance.md) | 99 | `declaration-track:10e3ca1fefe6a54bdac627533504b7318ff6cc0a7d0c6dbac277369a057ff3ad` |
| 19 | `lemma` | [fst_unop_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/fst-unop-hom.md) | 109 | `result-track:fb68d0ad28be20e9765aebf9b80b3ce49060a903e20de05014b14631eaae4304` |
| 20 | `lemma` | [snd_unop_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/snd-unop-hom.md) | 110 | `result-track:c84cbe921061cc5e3780c5438eaa14f01e79909c7fb3117d9a31d09c0bc19983` |
| 21 | `lemma` | [toUnit_unop_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/tounit-unop-hom.md) | 113 | `result-track:3b52cc4a9be054cdd9f539b8c8e1843aaef1d57aaddb660e808d8fcca006be2c` |
| 22 | `lemma` | [lift_unop_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalPublic.lean/declarations/lift-unop-hom.md) | 115 | `result-track:008201403647c72ea25c96b8638d157129a974c856d60b103b7aecee526c13bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1553dba3173f4c33fc6a5763dcf6e091831c75be4370298f50bdb316cc9298f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Monoidal/Variantca7162c25209e5d2041f07b08e3524bc9892f5753e17dccfe0dd1058638b4215.lean","GRWTSK/_verification/specifications/Algebra/Monoidal/Variantca7162c25209e5d2041f07b08e3524bc9892f5753e17dccfe0dd1058638b4215.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
