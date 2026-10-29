# Verification target: Representation Theory Submodule Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04a4bb035f30b724b34fedaf335401739ba677ba",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant78cfa9a2da53a57accc4764808157d0c40603cae15fd4ebe607eb0c3f597b154.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheorySubmoduleNamespaced.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheorySubmoduleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04a4bb035f30b724b34fedaf335401739ba677ba`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variant78cfa9a2da53a57accc4764808157d0c40603cae15fd4ebe607eb0c3f597b154.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variant78cfa9a2da53a57accc4764808157d0c40603cae15fd4ebe607eb0c3f597b154.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Invariant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invtSubmodule](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheorySubmoduleNamespaced.lean/declarations/invtsubmodule.md) | 29 | `declaration-track:e3aa5ebc1e201ec3ee02523c997b25c708ecd61a98dea95d26a562d716a90e5f` |
| 2 | `lemma` | [mem_invtSubmodule](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheorySubmoduleNamespaced.lean/declarations/mem-invtsubmodule.md) | 32 | `result-track:94811cf1bdc758a0d44d8e1fa39db669f6d768d30035acedeaf0903ec84a78d4` |
| 3 | `lemma` | [top_mem](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheorySubmoduleNamespaced.lean/declarations/top-mem.md) | 38 | `result-track:ab61a8666f922086d9d89f23e408d47b4cc78badd28273023165d5284111ff2b` |
| 4 | `lemma` | [bot_mem](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheorySubmoduleNamespaced.lean/declarations/bot-mem.md) | 40 | `result-track:ac5daf621145a39f7dbea7b73985bcb1118a0648c905fea41c55e77cc762d6c9` |
| 5 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheorySubmoduleNamespaced.lean/declarations/instance.md) | 42 | `declaration-track:167614a3302406a8a53d779ac3758ecc60e75f3aa3d955a7732e7e09e3653f14` |
| 6 | `lemma` | [coe_top](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheorySubmoduleNamespaced.lean/declarations/coe-top.md) | 48 | `result-track:d913ad843c869ec6ae0bcc32b810cec723f30c7d5c000dfc637fe7c823e37c31` |
| 7 | `lemma` | [coe_bot](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheorySubmoduleNamespaced.lean/declarations/coe-bot.md) | 50 | `result-track:101d1ca75f8423652b3d47f9b5a9a01d5190b74157ade2b32de3064c2379d70f` |
| 8 | `lemma` | [nontrivial_iff](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheorySubmoduleNamespaced.lean/declarations/nontrivial-iff.md) | 52 | `result-track:e51957ca1cb3966a5597ac721688f3702b625c8cb5a0320dedc9179e8becc491` |
| 9 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheorySubmoduleNamespaced.lean/declarations/instance-source-edition-2.md) | 61 | `declaration-track:87a589429449d024195c0b4c45158522e09b59eb69ad2615ab5f4d61d4d13b08` |
| 10 | `lemma` | [asAlgebraHom_mem_of_forall_mem](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheorySubmoduleNamespaced.lean/declarations/asalgebrahom-mem-of-forall-mem.md) | 66 | `result-track:134484f6728e2e809efad830354ab06aa878916af74e9fd4bbca882b20d79ca9` |
| 11 | `def` | [mapSubmodule](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheorySubmoduleNamespaced.lean/declarations/mapsubmodule.md) | 72 | `declaration-track:ad34f323a564f7366335933d6f77020c4c2b35357cfc13b071e89bd81c5ebda0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3010369ae6330d5f4893ea9d2cc569d483bca9b20c7e29d089021e4e613588e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Submodule/Variant78cfa9a2da53a57accc4764808157d0c40603cae15fd4ebe607eb0c3f597b154.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Submodule/Variant78cfa9a2da53a57accc4764808157d0c40603cae15fd4ebe607eb0c3f597b154.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
