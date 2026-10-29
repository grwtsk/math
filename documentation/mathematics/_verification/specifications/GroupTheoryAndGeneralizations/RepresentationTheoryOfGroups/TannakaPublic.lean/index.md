# Verification target: Tannaka Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87eeff7d91f11590ff463174dbf57336f58d0b60",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variantb3b48f9b4052f88f74246f9dc45b21f434a6307228bdfabf0dcf7236267c2531.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87eeff7d91f11590ff463174dbf57336f58d0b60`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variantb3b48f9b4052f88f74246f9dc45b21f434a6307228bdfabf0dcf7236267c2531.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variantb3b48f9b4052f88f74246f9dc45b21f434a6307228bdfabf0dcf7236267c2531.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/instance.md) | 42 | `declaration-track:75e5a6db2d4d101d3c2a7237f5c5f608e28f37ee6d5e6d1969e16e194933357d` |
| 2 | `def` | [forget](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/forget.md) | 47 | `declaration-track:44bf717b4006c513efdb82eda99828da8e970c9fd18cbc8f871fe8c139e32348` |
| 3 | `lemma` | [forget_obj](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/forget-obj.md) | 49 | `result-track:d6f8b0825b18bcc9703519e9b7f13cf7189e83f81d5f0ff0ea2c61fbf8f921a2` |
| 4 | `lemma` | [forget_map](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/forget-map.md) | 51 | `result-track:960164b6ed02d708f090640c6b221de586fc5a8198a8be630547b0d61758ed75` |
| 5 | `def` | [equivApp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/equivapp.md) | 55 | `declaration-track:6e093d66e2a741af1d4df613d237f27c7895a3abdc27cd2a3d9eb0276995ae5e` |
| 6 | `def` | [equivHom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/equivhom.md) | 69 | `declaration-track:41669a751aa9b411d08c75a3f3d6829cff1dd431c587a71ca2d19ebb1016e78d` |
| 7 | `def` | [rightRegular](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/rightregular.md) | 76 | `declaration-track:2a2acbfdc188465591b438d69a2b7380cef8b954a6ccae55b5c488ddc5c73732` |
| 8 | `lemma` | [rightRegular_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/rightregular-apply.md) | 89 | `result-track:f4198f33f5fb2863710cb0d826aeb0df75f3c67289a85144801e7fe947326ca6` |
| 9 | `def` | [leftRegular](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/leftregular.md) | 92 | `declaration-track:15dc73a517f982a64674db8212ab0f47a0afe982cd1380ecc24bdb561ec199f5` |
| 10 | `lemma` | [leftRegular_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/leftregular-apply.md) | 105 | `result-track:bdad2af9e764254a123e34677e9f012418b4a0e1f0899b64969bf5be627cd619` |
| 11 | `def` | [rightFDRep](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/rightfdrep.md) | 109 | `declaration-track:b2701251338eb2eaae72c29724b9c2170412d2dc4051e9fe1ef01c9798c3c56f` |
| 12 | `lemma` | [equivHom_injective](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/equivhom-injective.md) | 116 | `result-track:e578eb5d2b7c4247801b301b34185c28c3e67a3e0fd164cf6aff121f9b3f5af4` |
| 13 | `def` | [mulRepHom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/mulrephom.md) | 123 | `declaration-track:a8f56ba92d04a0dd073507b3a2edeb358894a283f77ab168cf21c8728497f954` |
| 14 | `lemma` | [map_mul_toRightFDRepComp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/map-mul-torightfdrepcomp.md) | 132 | `result-track:1b2623b47577b4bd3796a788e3f0ceee0104991a3ef3cf311e011d833bec64c9` |
| 15 | `def` | [algHomOfRightFDRepComp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/alghomofrightfdrepcomp.md) | 144 | `declaration-track:8b151518611132046f1679df5b1fd56c037a98230fe71031461c4246f4383a5c` |
| 16 | `def` | [sumSMulInv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/sumsmulinv.md) | 158 | `declaration-track:b338cc1b447bc8a81ea694d6ac5fab34387a0bc48d8493c3a49913d852137a67` |
| 17 | `lemma` | [sumSMulInv_single_id](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/sumsmulinv-single-id.md) | 164 | `result-track:a4e0c0952ef6d1cdce2a35c2a15479d4487bbde6b76558fac86904242f25aa29` |
| 18 | `def` | [ofRightFDRep](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/ofrightfdrep.md) | 172 | `declaration-track:d6d721d01b534b8c12d80f4012a24d36378ab8dfab57853f99ee8a92b9f4194b` |
| 19 | `lemma` | [toRightFDRepComp_injective](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/torightfdrepcomp-injective.md) | 181 | `result-track:41c319097c6fe0aba08d73ab6caf8b04adcf35e7029a73b1e2b65c2193a6185b` |
| 20 | `def` | [leftRegularFDRepHom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/leftregularfdrephom.md) | 192 | `declaration-track:01f1a0aba0eb3c329a2796afc2a49f31412521700fd9efe3251bb1486ee3d12c` |
| 21 | `lemma` | [toRightFDRepComp_in_rightRegular](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/torightfdrepcomp-in-rightregular.md) | 201 | `result-track:bb5a162b0237e467d463f54d746a7189d0d39f6ebe99793f81d5e0eb1691499f` |
| 22 | `lemma` | [equivHom_surjective](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/equivhom-surjective.md) | 217 | `result-track:ab44443d4bd327778cd54b4412c7b695fe44eb8f1eeb818f6693fb4d4069993a` |
| 23 | `def` | [equiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TannakaPublic.lean/declarations/equiv.md) | 227 | `declaration-track:950098acd07dcc0e38ba98a62aabd7211bdd90a5ea36694ceb63393f1719e602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b28a1bca405993ef4ed1ccfb71c362fb98d9305f19f2875a10d4cb5f7176b5e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variantb3b48f9b4052f88f74246f9dc45b21f434a6307228bdfabf0dcf7236267c2531.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variantb3b48f9b4052f88f74246f9dc45b21f434a6307228bdfabf0dcf7236267c2531.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
