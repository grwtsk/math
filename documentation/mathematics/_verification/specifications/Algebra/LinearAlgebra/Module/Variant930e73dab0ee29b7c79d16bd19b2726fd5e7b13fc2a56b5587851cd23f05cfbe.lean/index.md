# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variant930e73dab0ee29b7c79d16bd19b2726fd5e7b13fc2a56b5587851cd23f05cfbe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e7b9fe5c83cbcd3fbda0565df293480ef9f154c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant930e73dab0ee29b7c79d16bd19b2726fd5e7b13fc2a56b5587851cd23f05cfbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/LinearAlgebra/Module/Variant930e73dab0ee29b7c79d16bd19b2726fd5e7b13fc2a56b5587851cd23f05cfbe.lean/index.md) · [Full source](../../../../../../Algebra/LinearAlgebra/Module/Variant930e73dab0ee29b7c79d16bd19b2726fd5e7b13fc2a56b5587851cd23f05cfbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e7b9fe5c83cbcd3fbda0565df293480ef9f154c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variant930e73dab0ee29b7c79d16bd19b2726fd5e7b13fc2a56b5587851cd23f05cfbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variant930e73dab0ee29b7c79d16bd19b2726fd5e7b13fc2a56b5587851cd23f05cfbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Support` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LocalizedModule.subsingleton_iff_disjoint](../../../../../../Algebra/LinearAlgebra/Module/Variant930e73dab0ee29b7c79d16bd19b2726fd5e7b13fc2a56b5587851cd23f05cfbe.lean/declarations/localizedmodule-subsingleton-iff-disjoint--34c4264e51c658ac5c32e8b4.md) | 38 | `result-track:34c4264e51c658ac5c32e8b4183289296add7548ba868327a36b13c598d58ace` |
| 2 | `lemma` | [Module.stableUnderSpecialization_support](../../../../../../Algebra/LinearAlgebra/Module/Variant930e73dab0ee29b7c79d16bd19b2726fd5e7b13fc2a56b5587851cd23f05cfbe.lean/declarations/module-stableunderspecialization-support--3f842264195e7ab8b2db68be.md) | 44 | `result-track:3f842264195e7ab8b2db68be68c7865c3085286197a494afc5e4220fb443aac2` |
| 3 | `lemma` | [Module.isClosed_support](../../../../../../Algebra/LinearAlgebra/Module/Variant930e73dab0ee29b7c79d16bd19b2726fd5e7b13fc2a56b5587851cd23f05cfbe.lean/declarations/module-isclosed-support--286891beead3b97a17ba6670.md) | 51 | `result-track:286891beead3b97a17ba6670cfe36527254732264d990d68e8bfea9cbffeb0e8` |
| 4 | `lemma` | [Module.support_subset_preimage_comap](../../../../../../Algebra/LinearAlgebra/Module/Variant930e73dab0ee29b7c79d16bd19b2726fd5e7b13fc2a56b5587851cd23f05cfbe.lean/declarations/module-support-subset-preimage-comap--bfc57b60832d28c33b38541c.md) | 56 | `result-track:bfc57b60832d28c33b38541cbbb7e09e216034c05f0547fc5ca1e1fdb7f66868` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ab4dd8270563a72347b1856cfd210d172b0f26f3600beeb59af82f70708354a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Module/Variant930e73dab0ee29b7c79d16bd19b2726fd5e7b13fc2a56b5587851cd23f05cfbe.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Module/Variant930e73dab0ee29b7c79d16bd19b2726fd5e7b13fc2a56b5587851cd23f05cfbe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
