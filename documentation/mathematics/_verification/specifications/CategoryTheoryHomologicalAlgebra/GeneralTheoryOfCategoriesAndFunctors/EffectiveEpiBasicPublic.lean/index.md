# Verification target: Effective Epi Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e162650695ba5d5e54d0917c8eb6ec8f4097c6fe",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant943d2329992aa943fd4ded6b2cdf6c9fc60e040c03350c2a05bb7b7458d8064a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e162650695ba5d5e54d0917c8eb6ec8f4097c6fe`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant943d2329992aa943fd4ded6b2cdf6c9fc60e040c03350c2a05bb7b7458d8064a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant943d2329992aa943fd4ded6b2cdf6c9fc60e040c03350c2a05bb7b7458d8064a.lean.json)

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
| 1 | `structure` | [EffectiveEpiStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepistruct.md) | 49 | `declaration-track:c003bec63618c597e37bf5dd9b7dc44099b898ccfea0cb5e60b7003374ba739e` |
| 2 | `class` | [EffectiveEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepi.md) | 71 | `declaration-track:3c7f6adf3122a51a5904c67b28169f1f054af7ff2df8c28c0a98c505ad933b18` |
| 3 | `def` | [EffectiveEpi.getStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepi-getstruct.md) | 77 | `declaration-track:a454af78134121e0e07ef01b9e48ffc0b83450bbe131950fc494d156b45e5aeb` |
| 4 | `def` | [EffectiveEpi.desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepi-desc.md) | 82 | `declaration-track:1bf3673af8dead621fd8671ac8725d90fff7bfe5bbf714fb606498bf09019c95` |
| 5 | `lemma` | [EffectiveEpi.fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepi-fac.md) | 87 | `result-track:2727d06ed55cef3e0a01270961db4c720de41e60577b9bf4f3ac2292b2f51f65` |
| 6 | `lemma` | [EffectiveEpi.uniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepi-uniq.md) | 92 | `result-track:22794ae915cdbb28236c4af003ecab963db49590bfd63bfc07a71f970dfef316` |
| 7 | `instance` | [epi_of_effectiveEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/epi-of-effectiveepi.md) | 100 | `declaration-track:34b2568731fbbe6cfb4f413c492d009d0ec2c04a4ef91c3b2c18acf51200a497` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/instance-source-edition-5.md) | 105 | `declaration-track:f6c612a383af4f4a1e639e4364976bc95bbcb9c98a8a21c0bdcf66945086b9e6` |
| 9 | `structure` | [EffectiveEpiFamilyStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepifamilystruct.md) | 115 | `declaration-track:ae2f977191438aa7ceb0a20966823b813e184c0bf6127f38326115ef4c8d0245` |
| 10 | `class` | [EffectiveEpiFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepifamily.md) | 141 | `declaration-track:78166eefec77df525a87db56c577539f772d4c42afdb61592f88a837d0b05761` |
| 11 | `def` | [EffectiveEpiFamily.getStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepifamily-getstruct.md) | 147 | `declaration-track:4cdc89b7ee713aaeb5d69de26a7a510d8e390d7102243a8f8b47debe2fe5639a` |
| 12 | `def` | [EffectiveEpiFamily.desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepifamily-desc.md) | 153 | `declaration-track:1685c3d0ab712ae0b13c5b83c5a3f4cb9bbe1ab6f9da4206931f2e459093d6d7` |
| 13 | `lemma` | [EffectiveEpiFamily.fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepifamily-fac.md) | 160 | `result-track:861a220b6b88e7e29a007a3af84a41ff6a869c5e38bf3e40ae074ff7a3e987ff` |
| 14 | `lemma` | [EffectiveEpiFamily.uniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepifamily-uniq.md) | 167 | `result-track:7a7e32b9d7cb5de82d9067ce09728e388712e6a4a8ce68c85e874a689dcf7f24` |
| 15 | `lemma` | [EffectiveEpiFamily.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepifamily-hom-ext.md) | 176 | `result-track:71e4f303011ac2329c784ee20124d44858681d4975c8fa135a5cd4df859c8b5d` |
| 16 | `def` | [effectiveEpiFamilyStructSingletonOfEffectiveEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepifamilystructsingletonofeffectiveepi.md) | 189 | `declaration-track:b2558acac8179c16c6666bb18d8f7643763d1da4c0145489f1d4022d911262d0` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/instance-source-edition-4.md) | 195 | `declaration-track:eed5d3e5c2afd3c659fe62a6371b668312f0dba8ec07bbf1f8250e3efd1dadad` |
| 18 | `def` | [effectiveEpiStructOfEffectiveEpiFamilySingleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepistructofeffectiveepifamilysingleton.md) | 202 | `declaration-track:a43f823f4931fe16c344635916a9a8d45f731caa1112374ad69b0a00d2e0c8f4` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/instance-source-edition-3.md) | 212 | `declaration-track:dd480a022c1dacf44a0f490a257e56765cab5ecbeafe32d7bdf5944265ee8e7a` |
| 20 | `theorem` | [effectiveEpi_iff_effectiveEpiFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepi-iff-effectiveepifamily.md) | 216 | `result-track:2933f6eb81f006195071a17d7b6533111f5da60340284bfae01fbc0ed0be43f0` |
| 21 | `def` | [effectiveEpiFamilyStructOfIsIsoDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepifamilystructofisisodesc.md) | 225 | `declaration-track:a3c18666a2628e29914bab7365f5bb788ad5506f8150ca8b8873cb509066d984` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/instance-source-edition-2.md) | 243 | `declaration-track:d368e0602732ba27e1e06775f9fa2e839ea851b82458b3524257422ed30ef0b6` |
| 23 | `def` | [effectiveEpiStructOfIsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepistructofisiso.md) | 249 | `declaration-track:2a09053ea5c11f823fe9f063f46003ff7c4c82901ab10170a234e325704f1c12` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/instance.md) | 254 | `declaration-track:97a6adb3548b2b1e1b5cdabf5513e74dc07537f68b099316fb0a1894434e54c7` |
| 25 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/example.md) | 256 | `declaration-track:800ac0f8676906103c3904641a47d2bb50d8e57a1e640843b5cbfb8167a35382` |
| 26 | `def` | [EffectiveEpiFamilyStruct.reindex](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepifamilystruct-reindex.md) | 261 | `declaration-track:4d45987c5122ddb69e0b0dc6a9628148a62350ba998b1bce725d11db50e6f355` |
| 27 | `lemma` | [EffectiveEpiFamily.reindex](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasicPublic.lean/declarations/effectiveepifamily-reindex.md) | 277 | `result-track:c47deddab69184cbec9102186874996a668f7bc7f200a2025647066c887acd8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a45fd54d61cc8edabfa98a66ad4ba8b9cbee458af872a2acf8e42dfab180b710 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant943d2329992aa943fd4ded6b2cdf6c9fc60e040c03350c2a05bb7b7458d8064a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant943d2329992aa943fd4ded6b2cdf6c9fc60e040c03350c2a05bb7b7458d8064a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
