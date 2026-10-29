# Verification target: ZMod Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "621c1839659f897b266be27ff683c198250bb426",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ZMod/Variant18d2a972c326eebda9bc67d08f5fbad27248443c29423b058e6d8c95e2559b0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `621c1839659f897b266be27ff683c198250bb426`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ZMod/Variant18d2a972c326eebda9bc67d08f5fbad27248443c29423b058e6d8c95e2559b0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ZMod/Variant18d2a972c326eebda9bc67d08f5fbad27248443c29423b058e6d8c95e2559b0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Sylow` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AddCommMonoid.zmodModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/declarations/addcommmonoid-zmodmodule.md) | 29 | `declaration-track:558788ca82cbdd44a007e3483a09b4d5cb7e6e4150d35a5a37714588f7e11788` |
| 2 | `abbrev` | [AddCommGroup.zmodModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/declarations/addcommgroup-zmodmodule.md) | 48 | `declaration-track:e3e7c2e82fd8b1ca22e92fe585aa57474481c895f4d9c9658be072742172a440` |
| 3 | `abbrev` | [QuotientAddGroup.zmodModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/declarations/quotientaddgroup-zmodmodule.md) | 57 | `declaration-track:fb3c8042c38c46741b0a0c164b36700d597f7d5727f76f6f5601123d3413d187` |
| 4 | `theorem` | [map_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/declarations/map-smul.md) | 67 | `result-track:4ad31f5f251e0cc97f7068c31d8d8a6e46ed70c07695f17f13bcc51c253d7e2d` |
| 5 | `theorem` | [smul_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/declarations/smul-mem.md) | 71 | `result-track:76d4883216a09842d63f1c1f2dead4d8c04e58d9eb813b3a47b579afa7bbcc2e` |
| 6 | `def` | [toZModLinearMap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/declarations/tozmodlinearmap.md) | 85 | `declaration-track:b20079408983810e6bb28eda22a652c7ca0ba1825a1ba9e49b893ac8631ec17e` |
| 7 | `theorem` | [toZModLinearMap_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/declarations/tozmodlinearmap-injective.md) | 87 | `result-track:12e5fca10036568c4843d5d98c234697ed5fe0b3ab46a5825e58dd24f0d66b2c` |
| 8 | `theorem` | [coe_toZModLinearMap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/declarations/coe-tozmodlinearmap.md) | 91 | `result-track:5024e7fbe1ff15f2c311ed92117b180c4e94bafdca540878066d58353fd39585` |
| 9 | `def` | [toZModLinearMapEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/declarations/tozmodlinearmapequiv.md) | 94 | `declaration-track:a1608c902beee5b2c371da8d8f9d6c4f42ca84b8c0b0bc377b8916778e465ce9` |
| 10 | `def` | [toZModSubmodule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/declarations/tozmodsubmodule.md) | 108 | `declaration-track:cf94b02af9fa04e588ac442c42e505fb2730770e40a80f715093187c588b299d` |
| 11 | `theorem` | [toZModSubmodule_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/declarations/tozmodsubmodule-symm.md) | 116 | `result-track:ca04c00b455ad7c1e9c22a4e7bfd4c721ab268f6db69d7c0222dc05e037b81c2` |
| 12 | `lemma` | [coe_toZModSubmodule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/declarations/coe-tozmodsubmodule.md) | 120 | `result-track:ff2b763ff2d60830ea3811ee3b3d4133db7669e5cffd14d3f9113e5bd87bcde9` |
| 13 | `lemma` | [mem_toZModSubmodule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/declarations/mem-tozmodsubmodule.md) | 121 | `result-track:c5cf1d387f42103ffc3483e3fb81daf5eb448e3cc0b8192c42edcbe85a3f29fe` |
| 14 | `theorem` | [toZModSubmodule_toAddSubgroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/declarations/tozmodsubmodule-toaddsubgroup.md) | 124 | `result-track:8720c366d4d1166f4a58be297e9c7bfeef918e4e4ab57d8c228706e9a724413d` |
| 15 | `theorem` | [ZMod Namespaced](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/declarations/toaddsubgroup-tozmodsubmodule.md) | 129 | `result-track:b8fd413c9873dfbdc3f65d894973d40880fb77a2ed6c48cc43176a2e18351659` |
| 16 | `lemma` | [exists_submodule_subset_card_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ZModNamespaced.lean/declarations/exists-submodule-subset-card-le.md) | 140 | `result-track:01a560ae566040e42ee9fa4881649bb4d562ef88a78748cbb3a0d6ddd60d3f36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a3ec7aaacc8ea746c8572afddb7e847db1d84578580f83a9e7e75ac678b2340 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ZMod/Variant18d2a972c326eebda9bc67d08f5fbad27248443c29423b058e6d8c95e2559b0b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ZMod/Variant18d2a972c326eebda9bc67d08f5fbad27248443c29423b058e6d8c95e2559b0b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
