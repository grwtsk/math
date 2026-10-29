# Verification target: Field With Abs With Abs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5e530b217da329d254b101e6cb40d1e3f83c776",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WithAbs/Variant1b1188ab27b31884becd5d6bee1c6b2ef08f231517c0b947b51cb163ee162c11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5e530b217da329d254b101e6cb40d1e3f83c776`.

Source path: `GRWTSK/Topology/GeneralTopology/WithAbs/Variant1b1188ab27b31884becd5d6bee1c6b2ef08f231517c0b947b51cb163ee162c11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WithAbs/Variant1b1188ab27b31884becd5d6bee1c6b2ef08f231517c0b947b51cb163ee162c11.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 45 | `declaration-track:8b4255e6ba7f93bbee55c1ff2f3aafd7ad831f6fef4bd1fe8339f7df07e9037b` |
| 2 | `instance` | [normedField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/normedfield.md) | 47 | `declaration-track:63a01b87f2de4113685e0b493cfbb96e5a08d45742af55fb7cee2cc9f4a1ce06` |
| 3 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 51 | `declaration-track:5185422770907fa31e971a81c6429af6aad8dc0f43c5423f8de44b91751ba645` |
| 4 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 55 | `declaration-track:59aa53acbc92de7f1bc23d55a4c03f53bda4667ab7c3dfe8e05b930b7a5df0c3` |
| 5 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/instance.md) | 59 | `declaration-track:2d9dd981abdaa9bc92d71a9a827217e537a0e7d6093728d2be04d1231db210e4` |
| 6 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 63 | `declaration-track:a8b037e9d83d8d1c632993ee351e7c61f3aff908769beba81eb71d6a658015c5` |
| 7 | `lemma` | [toAbs_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/toabs-div.md) | 67 | `result-track:7e6070d0319febb71e49d46f9f2376b450fb5b1c42420a5eb35ca4c3d0fcbd0a` |
| 8 | `lemma` | [ofAbs_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/ofabs-div.md) | 68 | `result-track:8ffe729dd7a18759974e20d8ffe363c3ed1e309a37af424808016ab97d80407f` |
| 9 | `lemma` | [toAbs_inv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/toabs-inv.md) | 70 | `result-track:7c04fc2507cd705b2cb586b96ae8059465c9195713b4e388e00ab6d37bcc9361` |
| 10 | `lemma` | [ofAbs_inv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/ofabs-inv.md) | 71 | `result-track:ab59d9a3b161cea3a01b826bb7ad66492ac23b45120c1c9351ae678320ba5b9a` |
| 11 | `theorem` | [tendsto_one_div_one_add_pow_nhds_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/tendsto-one-div-one-add-pow-nhds-one.md) | 76 | `result-track:ff8285077b0e42117d7c2188983109ac0fe295663bb75326cb8e87c7e270a883` |
| 12 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 87 | `declaration-track:f44c05f5cff7f354ecc5f5d1db987267b4afa5c6cf01c85f8e7a71f84f62b660` |
| 13 | `theorem` | [isometry_map](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/isometry-map.md) | 97 | `result-track:ccdfa0a62ba3349220464aab1fd75361107a389f8b835d8cef004de4b585ef30` |
| 14 | `abbrev` | [Completion](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/completion.md) | 115 | `declaration-track:b50b96b4c47442b8a38854c533fc6f9666374dc51889f90e7f39af0667faac61` |
| 15 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 119 | `declaration-track:8e848ba239e1cc541ed6e3bf754f26a39e4055ad1ce42304307a66da04181c83` |
| 16 | `def` | [algebraOfLiesOver](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/algebraofliesover.md) | 130 | `declaration-track:061d1fbde69763c3aacc3503ee19770fc14561ae1f8b8e6e43e0d964c10d741f` |
| 17 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 134 | `declaration-track:4825390c4a0ba5b77c0ce8cc43a8e96b4395cd31a9cbf53b0ae95f15b923cd24` |
| 18 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 140 | `declaration-track:97b045e4e43b1333406aa5f80360224ee1fb1865cd9963647eaec894df3bc975` |
| 19 | `theorem` | [algebraMap_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/algebramap-eq.md) | 150 | `result-track:ae8c76b0c5b6c88128f15c08216c8e06fd0730d15c9e2bbbd7b53631774a145a` |
| 20 | `theorem` | [algebraMap_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/algebramap-apply.md) | 158 | `result-track:d5b369290e0b65f1367c31a2bae5020e26e47b83d0dee386f10d58def15740e8` |
| 21 | `theorem` | [algebra_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/algebra-eq.md) | 163 | `result-track:a9880e965b9d2b4a7d67caa239fba3b41642844b9463acf83bd95647ef48c38f` |
| 22 | `theorem` | [locallyCompactSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldWithAbsWithAbsNamespacedPublic.lean/declarations/locallycompactspace.md) | 172 | `result-track:f42552255bad315ecabeab1c810827fddd35002bcac7a3a16dabe4228f5d7c3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b61fe1c5398329b1755c8eaccf5289d0c39c2da89f4d5b8c3afba9a4c036965 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/WithAbs/Variant1b1188ab27b31884becd5d6bee1c6b2ef08f231517c0b947b51cb163ee162c11.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/WithAbs/Variant1b1188ab27b31884becd5d6bee1c6b2ef08f231517c0b947b51cb163ee162c11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
