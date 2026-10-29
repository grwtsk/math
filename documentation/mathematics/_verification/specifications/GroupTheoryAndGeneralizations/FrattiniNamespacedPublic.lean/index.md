# Verification target: Frattini Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71b59da5e16a7960f0b688d2b8eb95a6eb6d5683",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Frattini/Variant9e4174bf4d9be97d28c713d1e7b47122637be199a0c9e28a8903f81e81d5934d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FrattiniNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FrattiniNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71b59da5e16a7960f0b688d2b8eb95a6eb6d5683`.

Source path: `GRWTSK/Algebra/GroupTheory/Frattini/Variant9e4174bf4d9be97d28c713d1e7b47122637be199a0c9e28a8903f81e81d5934d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Frattini/Variant9e4174bf4d9be97d28c713d1e7b47122637be199a0c9e28a8903f81e81d5934d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frattini](../../../../GroupTheoryAndGeneralizations/FrattiniNamespacedPublic.lean/declarations/frattini.md) | 32 | `declaration-track:a91be7e234c250dd78f1ed9ab56bacb3de3c8ab9ac18d692ce6ad3eeb92ec5a4` |
| 2 | `lemma` | [frattini_le_coatom](../../../../GroupTheoryAndGeneralizations/FrattiniNamespacedPublic.lean/declarations/frattini-le-coatom.md) | 37 | `result-track:da63ecff03e47fc4717330ecfb33bc605fa8c4132252de22c36a8b74433c9253` |
| 3 | `lemma` | [frattini_le_comap_frattini_of_surjective](../../../../GroupTheoryAndGeneralizations/FrattiniNamespacedPublic.lean/declarations/frattini-le-comap-frattini-of-surjective.md) | 42 | `result-track:34cc89d4c6469f9e0e241a326c8953f3cf832515d9918405fc80f1ead0656faf` |
| 4 | `instance` | [frattini_characteristic](../../../../GroupTheoryAndGeneralizations/FrattiniNamespacedPublic.lean/declarations/frattini-characteristic.md) | 50 | `declaration-track:23fc54904412bffd9916f481392670bef490fc5a803a466ea81f19553bc2c2b9` |
| 5 | `theorem` | [frattini_nongenerating](../../../../GroupTheoryAndGeneralizations/FrattiniNamespacedPublic.lean/declarations/frattini-nongenerating.md) | 61 | `result-track:1f757108603b7aecf0cba56df5dd7158a62a9a57b926ac11ec996940a643860f` |
| 6 | `theorem` | [frattini_nilpotent](../../../../GroupTheoryAndGeneralizations/FrattiniNamespacedPublic.lean/declarations/frattini-nilpotent.md) | 66 | `result-track:4b9ba4e91b9f9295e5b10d9ef4efee1328d0edeb9ee90417cfa32be08fb183de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a8ae5f3309b28c5d1669433d411a89dc5e99be6af4950dd1fa58f70aae63870 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Frattini/Variant9e4174bf4d9be97d28c713d1e7b47122637be199a0c9e28a8903f81e81d5934d.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Frattini/Variant9e4174bf4d9be97d28c713d1e7b47122637be199a0c9e28a8903f81e81d5934d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
