# Verification target: Module Projective Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9ef4caa5a6a3dd84a23fd1ab4e5e34a3a6e7573",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant7c3115edfc2689b19a4f1ab0911f60e28b3829363e2076cf518d9defa91add01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleProjectiveAligned.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleProjectiveAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9ef4caa5a6a3dd84a23fd1ab4e5e34a3a6e7573`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Projective/Variant7c3115edfc2689b19a4f1ab0911f60e28b3829363e2076cf518d9defa91add01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Projective/Variant7c3115edfc2689b19a4f1ab0911f60e28b3829363e2076cf518d9defa91add01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Module.Projective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleProjectiveAligned.lean/declarations/module-projective.md) | 74 | `declaration-track:deddda3d19278ef746ed280b5ab53eccc63bcc58bf2404803a32e942f711e042` |
| 2 | `theorem` | [projective_def](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleProjectiveAligned.lean/declarations/projective-def-source-edition-2.md) | 86 | `result-track:8922668094838f4d3d7f55083fe6c2eee76396516cfa0a9313f40b94f03c3695` |
| 3 | `theorem` | [projective_def'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleProjectiveAligned.lean/declarations/projective-def.md) | 91 | `result-track:4bae0db45495c0a178d1af33a334fe92187a2c9e7539585c3174b434ecd37a81` |
| 4 | `theorem` | [projective_lifting_property](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleProjectiveAligned.lean/declarations/projective-lifting-property.md) | 97 | `result-track:dc85e522204b38bbf58deeeb8e50ee22001b3b17ec6e04940977565798ee2ed5` |
| 5 | `theorem` | [Projective.of_lifting_property''](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleProjectiveAligned.lean/declarations/projective-of-lifting-property.md) | 121 | `result-track:5292a4b88dea0f6fe6a78e31aab11b6b9f677bacf1f0c5e5dbadb08dd391d69a` |
| 6 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleProjectiveAligned.lean/declarations/instance.md) | 130 | `declaration-track:703d81e280f2ca81507c06cbb9bd64d7ef894c4cff0eba246f73d5770937b06a` |
| 7 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleProjectiveAligned.lean/declarations/instance-source-edition-3.md) | 139 | `declaration-track:f8a17b8ac79bdc6e35fac35220ceec14798f34f68351709f5498e40f6ae81fa6` |
| 8 | `theorem` | [Projective.of_basis](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleProjectiveAligned.lean/declarations/projective-of-basis.md) | 155 | `result-track:bbc55bcca2619a7ced501d6d289b1a48c74fd9beb00d49f1ccbe7d94ed691bc3` |
| 9 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleProjectiveAligned.lean/declarations/instance-source-edition-2.md) | 165 | `declaration-track:f04b73701a7c6df88bd01526f6437386f994a62372412e2bb2e9a09df030112b` |
| 10 | `theorem` | [Projective.of_lifting_property'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleProjectiveAligned.lean/declarations/projective-of-lifting-property-source-edition-2.md) | 177 | `result-track:8ec77e934c4e9113fcd839060dd0c51c3c4bbc06ff94a88cfc6d110450f9a840` |
| 11 | `theorem` | [Projective.of_lifting_property](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleProjectiveAligned.lean/declarations/projective-of-lifting-property-source-edition-3.md) | 191 | `result-track:9add13d20bb5a898f64bbc04196ff6bd81d61ad717ef10f55a47875447c905c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8ee8a3697492eb2171353691ce2bb95ba514b9d577dafc4fce9f08274affb6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Projective/Variant7c3115edfc2689b19a4f1ab0911f60e28b3829363e2076cf518d9defa91add01.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Projective/Variant7c3115edfc2689b19a4f1ab0911f60e28b3829363e2076cf518d9defa91add01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
