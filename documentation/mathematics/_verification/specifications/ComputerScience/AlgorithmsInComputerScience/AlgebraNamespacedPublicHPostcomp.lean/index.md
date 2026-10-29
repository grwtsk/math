# Verification target: Algebra Namespaced Public HPostcomp

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75f0efded5aaaa0120a33ca4a74722a5c89c8c6b",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variantbb9a70e29bdbd5e0fd5a6fc191e4fe4c9ae08aac9c6b62aba245c11434dd09ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75f0efded5aaaa0120a33ca4a74722a5c89c8c6b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variantbb9a70e29bdbd5e0fd5a6fc191e4fe4c9ae08aac9c6b62aba245c11434dd09ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variantbb9a70e29bdbd5e0fd5a6fc191e4fe4c9ae08aac9c6b62aba245c11434dd09ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.HashMap.AdditionalOperations` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HPostcomp](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/hpostcomp.md) | 40 | `declaration-track:57884c92fea7afb9ab31629841d5ef4adab48d20ff7f0dadffd23f2ed0d9aa33` |
| 2 | `class` | [HTransClosure](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/htransclosure.md) | 45 | `declaration-track:6448f63f425fb1beb6f1865053ca73a55df1cb43dbcb6012f724d250441ef091` |
| 3 | `class` | [Hierarchy](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/hierarchy.md) | 52 | `declaration-track:57bc3050f1a397f527ab5a4f4c51da73a7bda6b0ba489981a0bb99dd7ff675d4` |
| 4 | `abbrev` | [ArrayHierarchy](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/arrayhierarchy.md) | 60 | `declaration-track:7c3f0a95a8cd37eca771f0578c900e01c5b5d3a72f1b3e56f47e2d3090dd1bdf` |
| 5 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/instance-source-edition-7.md) | 62 | `declaration-track:e52bae04c88dbeda92c02ea20386e591c0899c770801df0f02c94eaec66fe057` |
| 6 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/instance.md) | 68 | `declaration-track:1aa1888f8c9491a6f3408440803f4f1a215ca5b360c2418ce9c4f868312318e5` |
| 7 | `abbrev` | [HierarchyT](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/hierarchyt.md) | 74 | `declaration-track:9c3516feb82efa8574c5fcfc3d33b486e198ca22bd09a5ad6e9213f9accef35e` |
| 8 | `def` | [Needs.addAndThen](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/needs-addandthen.md) | 81 | `declaration-track:9854b8908a187cfadf0286ea1f4624342a3991e3eb38af807bb70e84b1c6e274` |
| 9 | `def` | [Needs.andThen](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/needs-andthen.md) | 97 | `declaration-track:6af3601829e7aa1922ff86423aee7fca70fef6cec828aeb956e20769eba3fc5c` |
| 10 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/instance-source-edition-2.md) | 100 | `declaration-track:a8cebbd886ab7044bc81a4bc712d660a0d4c30640624ec86272e7dfd566fe9f1` |
| 11 | `def` | [Lean.Import.addAndThen](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/lean-import-addandthen.md) | 107 | `declaration-track:19a9498925817228d11fdd255b410d0e429e8da1f98aede775e7c4f6e9ba4b1d` |
| 12 | `def` | [Lean.Import.andThen](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/lean-import-andthen.md) | 113 | `declaration-track:86b31f8d45e39cef61acd4785c6e1dcf3664aab24951dba0f2c49545000e2745` |
| 13 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/instance-source-edition-8.md) | 116 | `declaration-track:eaf6c9336c24d52bd15e260e3b4fce041de0abe3fec7c9907ffa67e32f8d3448` |
| 14 | `def` | [NeedsKind.transitiveClosureSingle](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/needskind-transitiveclosuresingle.md) | 123 | `declaration-track:ef76ef17b5facc2ff8f3d3d8d315e37b9424c86fd72062451d7a0971ff9d0612` |
| 15 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/instance-source-edition-5.md) | 127 | `declaration-track:df4cb45131faa794229106b27650db6036d490e93daefa6c53ec785370bde8db` |
| 16 | `def` | [Lean.Import.transitiveClosureSingle](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/lean-import-transitiveclosuresingle.md) | 134 | `declaration-track:dd6aebfd07bb6eb5362c826d6d2298d077e76ba9ddca341fd4b2dde6bd00a877` |
| 17 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/instance-source-edition-4.md) | 138 | `declaration-track:cc1f9aa14c1f4c2a0d9fba85baaefd0b98b37b408747df44e150eac5e846b9f2` |
| 18 | `def` | [Hierarchy.addAndThen](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/hierarchy-addandthen.md) | 143 | `declaration-track:095ef0c2eb87f64316f684b4a36ec8d8a5a4a45afbe70138b7e16c9a2119a1c4` |
| 19 | `def` | [Hierarchy.andThen](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/hierarchy-andthen.md) | 152 | `declaration-track:200aa70f1379147f401da4cafbda260792328ad255ae880ba66dcd72b3a00f55` |
| 20 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/instance-source-edition-3.md) | 155 | `declaration-track:a95c24d3385e906c777b1f3ba362b14c61792976dc5d7ca72b3eefff8b49f4f5` |
| 21 | `def` | [Needs.addTransitiveClosure](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/needs-addtransitiveclosure.md) | 158 | `declaration-track:96990cd6d1e26320c95b81a4d3082bdb9a47619f62f41d1522b3e5ccccb6a498` |
| 22 | `def` | [Needs.transitiveClosure](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/needs-transitiveclosure.md) | 164 | `declaration-track:5c1a4bbf44b510e7a91159fcc820381262393151c236204a1e6aaa3aa93f98ef` |
| 23 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/instance-source-edition-6.md) | 167 | `declaration-track:df6a07a61e11e9918ffd7a14556735013f06244bb6580613a2752cc895e630c7` |
| 24 | `def` | [Needs.linearize](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/needs-linearize.md) | 178 | `declaration-track:5709f60f23d45e839a4e247eaf8ff02e8f17fdf40ecab8a86a912dac3f987066` |
| 25 | `def` | [Needs.isLinear](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/needs-islinear.md) | 184 | `declaration-track:56b339f2120cc81dee591700586a5ea04f39d689ea1cb6b27f953dd7516799f5` |
| 26 | `def` | [Needs.antilinearize](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/needs-antilinearize.md) | 189 | `declaration-track:887c9fa9baa74ad4f5c12781f450a78d92c4a1d131ba88577fe5a27d710b27a4` |
| 27 | `def` | [Needs.isAntilinear](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/needs-isantilinear.md) | 193 | `declaration-track:05299b0591d0c4e2b573dff9eea8f196897ea424d08a09d638cca06ea1064f1d` |
| 28 | `def` | [Needs.reflOf](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/needs-reflof.md) | 199 | `declaration-track:57f58d88dad176399f0671089573ad848000b2ed3287e587af0fa16a7f684981` |
| 29 | `def` | [Needs.reflexify](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/needs-reflexify.md) | 211 | `declaration-track:c553d5d018ccd45f8bef857cacc34050fc55cd812c6c38d81ec0e39bc2d85587` |
| 30 | `def` | [Needs.clearAt](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/needs-clearat.md) | 217 | `declaration-track:6c0d840a8658d30199e9191ae4c7422d8bd63b23a70a3ffc3504970a9d6131cf` |
| 31 | `def` | [Needs.providedToBy](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/needs-providedtoby.md) | 223 | `declaration-track:49362462bbce00e806698c60818b741449dee1a6dae28af91073263c784c780f` |
| 32 | `def` | [Needs.subsumedBy](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/needs-subsumedby.md) | 231 | `declaration-track:791224a232d1d1f0f43b8f92557c6dcb9895952e71c3e50aae1e59009db4ab9e` |
| 33 | `def` | [Needs.reduce](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/needs-reduce.md) | 245 | `declaration-track:fbbdb17cc6c2505f0d59d8debd0cb98cf801bca4f9ebb422757f418cda61778a` |
| 34 | `def` | [Array.incorporateBelow?](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/array-incorporatebelow.md) | 258 | `declaration-track:8126ac56ae6a3d82d64d8d1c26e483f7161a45c1fcc3af87df7d5cb330dd1805` |
| 35 | `def` | [Std.HashMap.incorporateBelowAt?](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/std-hashmap-incorporatebelowat.md) | 274 | `declaration-track:cbc2b03b4827cc766c177c1feda2e2db9ca7f978641b9688ac88a5e543b75bde` |
| 36 | `def` | [Array.minimals](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/array-minimals.md) | 280 | `declaration-track:a1db5bcf712d28c48ccac00df2b0a5dfe898c609ed3ff5fb5eceb64eb447c23d` |
| 37 | `def` | [Array.minimalValuesPer](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/array-minimalvaluesper.md) | 288 | `declaration-track:19541f0bf1133eff0f2a47ae380df7d1b37d4f0dda60c0e4e1cc5cd955fa4732` |
| 38 | `def` | [Array.minimalsPer](../../../../../ComputerScience/AlgorithmsInComputerScience/AlgebraNamespacedPublicHPostcomp.lean/declarations/array-minimalsper.md) | 297 | `declaration-track:262f01cc71f7c302ad3ef1b7834c6000fe4a9c7164423ee8023bfd31044d8157` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c069610b68e23b588807b9b1f99eb94a49943ef9e4606efe8d71eb05d5de72f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variantbb9a70e29bdbd5e0fd5a6fc191e4fe4c9ae08aac9c6b62aba245c11434dd09ec.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variantbb9a70e29bdbd5e0fd5a6fc191e4fe4c9ae08aac9c6b62aba245c11434dd09ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
