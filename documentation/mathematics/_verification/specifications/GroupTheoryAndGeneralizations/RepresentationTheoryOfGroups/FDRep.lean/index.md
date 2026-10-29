# Verification target: FDRep

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "109cefeafe06df762c6ef3d23855de477aeab095",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantbc7123abd5da1f5d7d544e3d5e0a4daa902eaa9b87ef571f084d815bccc3f14d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `109cefeafe06df762c6ef3d23855de477aeab095`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantbc7123abd5da1f5d7d544e3d5e0a4daa902eaa9b87ef571f084d815bccc3f14d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantbc7123abd5da1f5d7d544e3d5e0a4daa902eaa9b87ef571f084d815bccc3f14d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.FGModuleCat.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Rigid.Braided` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Schur` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Rep` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FDRep](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/fdrep.md) | 59 | `declaration-track:df468b1986540c71910fd24a6bbbf3e33bb77cdeea3c1fed45b756fd3cd5d69c` |
| 2 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/instance-source-edition-6.md) | 69 | `declaration-track:47cd9896ab5a80b1a04ae0f5701fda8f3781613f0ef50ab2a9184dae7a0342e2` |
| 3 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/instance-source-edition-10.md) | 70 | `declaration-track:92b828ceea61b5a27abf60644509228e9f0aa993ed6c5ac3745f4060d33847b2` |
| 4 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/instance-source-edition-14.md) | 71 | `declaration-track:f532367f6241df98c5d1dcf1bdce358f89551983e3a38b13b68443bf6a3bff9e` |
| 5 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/instance.md) | 72 | `declaration-track:077f3d07fedc5bed9297782c359a2ad83e635354a26b29127e96d02b25669afa` |
| 6 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/instance-source-edition-13.md) | 74 | `declaration-track:e73250bfd74254b1b301791c43bba97a2486f2cf9748fb4948efc7876953b25c` |
| 7 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/instance-source-edition-7.md) | 76 | `declaration-track:678c28e6f56b0de0e9afb73bad281cab41904d8e0e69913a2c88cc09b636722a` |
| 8 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/instance-source-edition-12.md) | 79 | `declaration-track:d9737685ed64c3b97fd55a027494678903b871fcc083085dc3352f239c486f98` |
| 9 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/instance-source-edition-5.md) | 82 | `declaration-track:47befbbadc97cda750528a2c9b8bb9aba5976226da13fd1d0e77e7bf7ffde19a` |
| 10 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/instance-source-edition-3.md) | 85 | `declaration-track:16e4003de95d18ba6b6023d1743aad6e0e4e8e70db037fe66f41cdbf0b210ceb` |
| 11 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/instance-source-edition-11.md) | 88 | `declaration-track:aca09aef0425fd0f3edb7e8583c28917eb7f2583544c8fb1f76962421ba97709` |
| 12 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/instance-source-edition-2.md) | 92 | `declaration-track:1356b3b616b3d50a851702b2702425f2f84e131526ac4468e875b86a4948e241` |
| 13 | `def` | [ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/anonymous.md) | 97 | `declaration-track:b9a7da562929df5a6d8be39ecba84fe0d3feee79670daf0760aec94c6f14ac7e` |
| 14 | `lemma` | [endRingEquiv_symm_comp_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/endringequiv-symm-comp.md) | 101 | `result-track:c13f72b7242995d2e9dff67889a138d21711880b2696b9cefed7225f22c7b53c` |
| 15 | `lemma` | [endRingEquiv_comp_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/endringequiv-comp.md) | 107 | `result-track:379d4ffb8556bd2578c6f67ebc915f335bbe3e166072412a230b6e0b794c7d22` |
| 16 | `lemma` | [hom_action_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/hom-action.md) | 111 | `result-track:7517d5b03b161e4f6edb5358af4b1aea97e94bcb58fec2dff3c8f43ad3d8c3c1` |
| 17 | `def` | [isoToLinearEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/isotolinearequiv.md) | 114 | `declaration-track:3f8ece6d06b8990d335b41297d4eab762254415e339196761cf205564dab2687` |
| 18 | `theorem` | [Iso.conj_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/iso-conj.md) | 117 | `result-track:5f1c2e68ee8563dd2547083361733faeccfe0058dc95fbded6b0bd279b19429c` |
| 19 | `abbrev` | [of](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/of-source-edition-2.md) | 126 | `declaration-track:ce02ba1ef1e363177beb44859709787d5e52677bede1d4a0c7e238f2b078317e` |
| 20 | `theorem` | [of_ρ'](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/of.md) | 132 | `result-track:17508bab2c704e02ed4f85b0cded16ff946749258a5076a196c442f1c6b688e4` |
| 21 | `theorem` | [ρ_inv_self_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/inv-self-apply.md) | 136 | `result-track:26c2f3d9729c31d2ba06092a5fc858ffdddb9bc2471808f3e38863bfcc062292` |
| 22 | `theorem` | [ρ_self_inv_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/self-inv-apply.md) | 141 | `result-track:a02e624e9c222eaaf001fd07504216f6b571e5e56ea24e3905b9974ce6f671f8` |
| 23 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/instance-source-edition-9.md) | 145 | `declaration-track:801434226558366dfa6523f2dea63880b0c1e92528630655df9342e3bb96789f` |
| 24 | `theorem` | [forget₂_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/forget.md) | 148 | `result-track:e2f60dec59e79850c5f5999242e9a469f4010a9c08511b4fce70365c2a6acd8b` |
| 25 | `example` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/example-source-edition-2.md) | 152 | `declaration-track:5d3727bea92353ead297a5d0e87adbec1fb58d236651ae8a86a7359e38726773` |
| 26 | `example` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/example-source-edition-3.md) | 154 | `declaration-track:ab5b46f70e3df545a0580052b259ed00c3bd172e5940955320632b941fb9c743` |
| 27 | `example` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/example-source-edition-4.md) | 156 | `declaration-track:b76221cb2f0781ce558b154f044b9ee23f633bcb700adcbe142c615d8a623b32` |
| 28 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/instance-source-edition-8.md) | 162 | `declaration-track:76a3a38bd86f1cd2b128b8734807b624ea6daaff769d7cdafbc838a6b7859c1d` |
| 29 | `theorem` | [finrank_hom_simple_simple](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/finrank-hom-simple-simple.md) | 167 | `result-track:710ebb319d5a97da4a3e9ba3873e684a5ab4f96e6e5549a930c274f5e799eecc` |
| 30 | `def` | [forget₂HomLinearEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/forget-homlinearequiv.md) | 172 | `declaration-track:b040a92c6ac3acdcd45853b69029f283fa6901a92e5ba292fe86eaf418bad29d` |
| 31 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/instance-source-edition-4.md) | 189 | `declaration-track:3f9987282aa17c11284443611214a1bae309236f4a3e1db3dfff8cea2575c75e` |
| 32 | `example` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/example.md) | 192 | `declaration-track:1f0d1571320ba763d6a5db2990148852cddb829c83dd0c96cfe82d4f8b3ab146` |
| 33 | `def` | [dualTensorIsoLinHomAux](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/dualtensorisolinhomaux.md) | 213 | `declaration-track:bee3818591686d96a1a8bd9574368e53e8eaa3e102a98e699d4d5ae42d9f9452` |
| 34 | `def` | [dualTensorIsoLinHom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/dualtensorisolinhom.md) | 220 | `declaration-track:f965106c4168e461ff72cf251354ca8b97c930316a6b740b763cf0e99fb54800` |
| 35 | `theorem` | [dualTensorIsoLinHom_hom_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/FDRep.lean/declarations/dualtensorisolinhom-hom-hom.md) | 226 | `result-track:d994f321d5372e2bcbc9555be5b1565fe5f1888006157112a1712fd191fd68a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16844f3fa9d98489679c196b0d0f164e74699d1d39e82d61c88e62788aa80a02 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantbc7123abd5da1f5d7d544e3d5e0a4daa902eaa9b87ef571f084d815bccc3f14d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantbc7123abd5da1f5d7d544e3d5e0a4daa902eaa9b87ef571f084d815bccc3f14d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
