# Verification target: Group Cohomology Finite Cyclic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fc1218bb78fffd8a00d8477aa337c00c12848bf",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteCyclic/Variantfb1a6511054c68bce4bb03c18ef6d90c02039cf0b306786306deac2a18afff89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupCohomologyFiniteCyclicNamespacedPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupCohomologyFiniteCyclicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fc1218bb78fffd8a00d8477aa337c00c12848bf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteCyclic/Variantfb1a6511054c68bce4bb03c18ef6d90c02039cf0b306786306deac2a18afff89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteCyclic/Variantfb1a6511054c68bce4bb03c18ef6d90c02039cf0b306786306deac2a18afff89.lean.json)

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
| 1 | `def` | [homResolutionIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupCohomologyFiniteCyclicNamespacedPublic.lean/declarations/homresolutioniso.md) | 66 | `declaration-track:5b7c4e5238453698e0ecf738f8f14aeaf030f76e648418125a7184e4540d4f0e` |
| 2 | `abbrev` | [groupCohomologyIso₀](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupCohomologyFiniteCyclicNamespacedPublic.lean/declarations/groupcohomologyiso.md) | 80 | `declaration-track:79e3975d6c909b5cda28a94ee806e49cd01b6b0518693cac29bedd5030291226` |
| 3 | `def` | [groupCohomologyIsoEven](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupCohomologyFiniteCyclicNamespacedPublic.lean/declarations/groupcohomologyisoeven.md) | 88 | `declaration-track:bb8958bdd07e2bdef87d2622dd17a4df0fc9b2d1c17215a9bb9678e42d5447e2` |
| 4 | `abbrev` | [groupCohomologyπEven](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupCohomologyFiniteCyclicNamespacedPublic.lean/declarations/groupcohomology-even.md) | 99 | `declaration-track:cb3cb1f8bcb162a91307ebb1940168c74fb85f6e69e8e751ad03c4610b40f32a` |
| 5 | `lemma` | [groupCohomologyπEven_eq_zero_iff](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupCohomologyFiniteCyclicNamespacedPublic.lean/declarations/groupcohomology-even-eq-zero-iff.md) | 106 | `result-track:c8693ad4bfd11d930b1c5a4e60ec0070e0be94074debc0b4f9004c8131451652` |
| 6 | `lemma` | [groupCohomologyπEven_eq_iff](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupCohomologyFiniteCyclicNamespacedPublic.lean/declarations/groupcohomology-even-eq-iff.md) | 112 | `result-track:a507c5fb57654c1fbc5716c6f7157aa9c7dcb0b7838aac2e1530cd7e9f4786a4` |
| 7 | `def` | [groupCohomologyIsoOdd](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupCohomologyFiniteCyclicNamespacedPublic.lean/declarations/groupcohomologyisoodd.md) | 121 | `declaration-track:31f51176655fec132e096af11f59910646ae29b8cf5fa19fc44ec0d7e1d79396` |
| 8 | `abbrev` | [groupCohomologyπOdd](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupCohomologyFiniteCyclicNamespacedPublic.lean/declarations/groupcohomology-odd.md) | 131 | `declaration-track:4d1e0aa749314983eaaff2659d4e3eb47324c15002ef02eac042129143c67c2a` |
| 9 | `lemma` | [groupCohomologyπOdd_eq_zero_iff](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupCohomologyFiniteCyclicNamespacedPublic.lean/declarations/groupcohomology-odd-eq-zero-iff.md) | 138 | `result-track:f1921f34dab81a3d6ca1ae6a60b4e65c22b3ac0252ed4f3166a332baac859618` |
| 10 | `lemma` | [groupCohomologyπOdd_eq_iff](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupCohomologyFiniteCyclicNamespacedPublic.lean/declarations/groupcohomology-odd-eq-iff.md) | 145 | `result-track:4f326aef3938bd7d5843a0887a9311820c6e86a597d28e740d75f913fe698d22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5830c1b94f4054d5dadd8f0dd3d6c309b7a342987e22ba14dc4fb16cc479c0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FiniteCyclic/Variantfb1a6511054c68bce4bb03c18ef6d90c02039cf0b306786306deac2a18afff89.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/FiniteCyclic/Variantfb1a6511054c68bce4bb03c18ef6d90c02039cf0b306786306deac2a18afff89.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
