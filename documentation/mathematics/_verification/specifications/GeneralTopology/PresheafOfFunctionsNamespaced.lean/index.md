# Verification target: Presheaf Of Functions Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "771f84bfb13f93f124f10576564a36c8a7ede005",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PresheafOfFunctions/Varianta68e5d05328a3928399c88621468c518043ea75a19e071cce72a550cd379e6f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PresheafOfFunctionsNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/PresheafOfFunctionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `771f84bfb13f93f124f10576564a36c8a7ede005`.

Source path: `GRWTSK/Topology/GeneralTopology/PresheafOfFunctions/Varianta68e5d05328a3928399c88621468c518043ea75a19e071cce72a550cd379e6f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PresheafOfFunctions/Varianta68e5d05328a3928399c88621468c518043ea75a19e071cce72a550cd379e6f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.Presheaf` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [presheafToTypes](../../../../GeneralTopology/PresheafOfFunctionsNamespaced.lean/declarations/presheaftotypes.md) | 41 | `declaration-track:ad5eed35c9cfeb1d1716ae5a5762e01a53bfe0e857de6f5b22603c0e18cbf5de` |
| 2 | `theorem` | [presheafToTypes_obj](../../../../GeneralTopology/PresheafOfFunctionsNamespaced.lean/declarations/presheaftotypes-obj.md) | 50 | `result-track:b22dd38caeeef92cef8e83f9ee2ce377e59bb63420253b56e3497159c39b9ca9` |
| 3 | `theorem` | [presheafToTypes_map](../../../../GeneralTopology/PresheafOfFunctionsNamespaced.lean/declarations/presheaftotypes-map.md) | 55 | `result-track:0e4a6d59100224f736ff185414ba7c1415bfe618a63673de1ae0b78b7db44619` |
| 4 | `def` | [presheafToType](../../../../GeneralTopology/PresheafOfFunctionsNamespaced.lean/declarations/presheaftotype.md) | 68 | `declaration-track:447a62d68c87d2a73e05315ad2e2476735ca1dc35459802d1078aad0128d22f8` |
| 5 | `theorem` | [presheafToType_obj](../../../../GeneralTopology/PresheafOfFunctionsNamespaced.lean/declarations/presheaftotype-obj.md) | 77 | `result-track:3ec4066aa62877d0f5443c680a338e2323e4acaccf5c04073db0e72af3e76650` |
| 6 | `theorem` | [presheafToType_map](../../../../GeneralTopology/PresheafOfFunctionsNamespaced.lean/declarations/presheaftotype-map.md) | 82 | `result-track:813a543fc6266686f9b292e5e33e0bcccbbafa3483e50ca7c514318702a65e68` |
| 7 | `def` | [presheafToTop](../../../../GeneralTopology/PresheafOfFunctionsNamespaced.lean/declarations/presheaftotop.md) | 88 | `declaration-track:a62a390cdba171996004b4d097faffe6af8b03c4a8241e306ae4db4db81c4cb7` |
| 8 | `theorem` | [presheafToTop_obj](../../../../GeneralTopology/PresheafOfFunctionsNamespaced.lean/declarations/presheaftotop-obj.md) | 92 | `result-track:d7c2a0265c79d436d575d59a03c7d5eb6e2060ee75cb76f092c103192bb60958` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22f70f29d45b79e87017dd06cdf9523e348681ff5bddb7a1ca90dcf62e5d92dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PresheafOfFunctions/Varianta68e5d05328a3928399c88621468c518043ea75a19e071cce72a550cd379e6f0.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PresheafOfFunctions/Varianta68e5d05328a3928399c88621468c518043ea75a19e071cce72a550cd379e6f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
