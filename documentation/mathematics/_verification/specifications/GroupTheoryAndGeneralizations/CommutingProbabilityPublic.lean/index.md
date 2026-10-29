# Verification target: Commuting Probability Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b6d7d4714dcdf3d0567e9951c509482c5c487fc",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CommutingProbability/Variant3379ad28b0e4ca5925d29ac95fac53af312b04f7f2c5c7c8cc64109a9ceb49a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b6d7d4714dcdf3d0567e9951c509482c5c487fc`.

Source path: `GRWTSK/Algebra/GroupTheory/CommutingProbability/Variant3379ad28b0e4ca5925d29ac95fac53af312b04f7f2c5c7c8cc64109a9ceb49a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CommutingProbability/Variant3379ad28b0e4ca5925d29ac95fac53af312b04f7f2c5c7c8cc64109a9ceb49a1.lean.json)

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
| 1 | `def` | [commProb](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/commprob.md) | 37 | `declaration-track:4d3cd1b52f2e517ebd7568b6dc775fb631a47cd984072469e06ba0e4aa5a9401` |
| 2 | `theorem` | [commProb_def](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/commprob-def-source-edition-2.md) | 40 | `result-track:6ed6c8ecec0e954b133e08c9060763956077daf2c275cc9612ec8524cec5057c` |
| 3 | `theorem` | [commProb_prod](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/commprob-prod.md) | 44 | `result-track:98a9efd19d1f1dca2a85511a5b7bc6372cacd3daec1be8c503f88ab08bb9b2d7` |
| 4 | `theorem` | [commProb_pi](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/commprob-pi.md) | 51 | `result-track:41c1f86a117ff7c57669f66b4e0aa70b78033807d6b65579af52e3a4f2bfb9c6` |
| 5 | `theorem` | [commProb_function](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/commprob-function.md) | 59 | `result-track:af142b1c26508fc10a7c9606aae4f1db4db8ec96f6a4295fec7c8d3bf2270267` |
| 6 | `theorem` | [commProb_eq_zero_of_infinite](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/commprob-eq-zero-of-infinite.md) | 64 | `result-track:50fb136adeb33b228956edf19586cd1a880d1c7a8241da890bde5aa78d45ce23` |
| 7 | `theorem` | [commProb_pos](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/commprob-pos.md) | 69 | `result-track:f561c0ea05a0b4b855ed8f542f1d011813c5e71d3b00873c2711b19fa18b9dcf` |
| 8 | `theorem` | [commProb_le_one](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/commprob-le-one.md) | 74 | `result-track:e42114c4249a1bbd24995984bec325951fa4f5b07a7ba5ee481c5c84cae40f4f` |
| 9 | `theorem` | [commProb_eq_one_iff](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/commprob-eq-one-iff.md) | 82 | `result-track:6161460bba44a49543ba5b78cc1c4acad2d8a2676771b698483070caba372efe` |
| 10 | `theorem` | [commProb_eq_one](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/commprob-eq-one.md) | 91 | `result-track:a883d8ae3d39b3f1fe323ab183e9a5811bf624b608681746736c1529e6682c4c` |
| 11 | `theorem` | [commProb_def'](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/commprob-def.md) | 96 | `result-track:0dbc509be7a5541cb97a373070e335260cbbbe15a1d97f2986b758a5ecb592c2` |
| 12 | `theorem` | [Subgroup.commProb_subgroup_le](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/subgroup-commprob-subgroup-le.md) | 105 | `result-track:c8ae909e62353c2613404010befd6a19157f07acb2f946d0600987f177c9e4ca` |
| 13 | `theorem` | [Subgroup.commProb_quotient_le](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/subgroup-commprob-quotient-le.md) | 115 | `result-track:88a20175a0e29ccfe9ba40b900bdc0fd63de2c57d74664c82f1e46ceea468eea` |
| 14 | `theorem` | [inv_card_commutator_le_commProb](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/inv-card-commutator-le-commprob.md) | 127 | `result-track:84564dee8758f98d9a59d32b7e178f2e88106e40ca6956e987a402eeffab4490` |
| 15 | `lemma` | [commProb_odd](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/commprob-odd.md) | 134 | `result-track:7cfe79f610b846e539846458c8c5214454afb99d4edf8ae1dabb6dae4a327179` |
| 16 | `def` | [reciprocalFactors](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/reciprocalfactors.md) | 143 | `declaration-track:4c15cc1b18503f8ddb7ea6f966da38e62496687ad884e03c9b2ec54ae0cd5c94` |
| 17 | `lemma` | [reciprocalFactors_zero](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/reciprocalfactors-zero.md) | 151 | `result-track:e396d44de32e5e31a9503802a5d0f27cd025590d2a13f80064dad20dad10ceab` |
| 18 | `lemma` | [reciprocalFactors_one](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/reciprocalfactors-one.md) | 154 | `result-track:91d7ea6643cb68c6470e7e9aa7b87190c545af545244c1b49e02fb528504953c` |
| 19 | `lemma` | [reciprocalFactors_even](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/reciprocalfactors-even.md) | 157 | `result-track:70e9bb38efeaa2c7d2fcae6f285988ec564d43b57d247486b0d49ab968bdff56` |
| 20 | `lemma` | [reciprocalFactors_odd](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/reciprocalfactors-odd.md) | 164 | `result-track:ad2ca83908b93d767513453ddd19d59617bbf773e16c47a57ab0aea17a4d14e8` |
| 21 | `abbrev` | [Product](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/product.md) | 173 | `declaration-track:df88a6e482e9c84217985e5ae8ef783c00858384c58ef035373504a812f91ce8` |
| 22 | `lemma` | [commProb_nil](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/commprob-nil.md) | 176 | `result-track:bf9f41de141d7a7a263c9ce922eec8bed9b46c029a5e37a8e6aca5ebfed7a10a` |
| 23 | `lemma` | [commProb_cons](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/commprob-cons.md) | 180 | `result-track:4a75b050646d24d1e7eeeabe652a342bae05b8647ad046f6ec41c6d30f9395fc` |
| 24 | `theorem` | [commProb_reciprocal](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityPublic.lean/declarations/commprob-reciprocal.md) | 186 | `result-track:fc6135d10ec8ec3a4a42ad883dec9fc0cc347d18747b17b7ccd8af6bfd45edb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6846a09f2ba8087f139dbea5892e8d422f2586b740baacc8830aef475c58c68b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/CommutingProbability/Variant3379ad28b0e4ca5925d29ac95fac53af312b04f7f2c5c7c8cc64109a9ceb49a1.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/CommutingProbability/Variant3379ad28b0e4ca5925d29ac95fac53af312b04f7f2c5c7c8cc64109a9ceb49a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
