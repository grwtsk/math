# Verification target: GRWTSK.Topology.GeneralTopology.SourceActualCenteredPrimePhaseSupport.Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b14ddb6dee976801fa404a675daee5a9f46fbf5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b14ddb6dee976801fa404a675daee5a9f46fbf5`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualCenteredPrimePhase` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficient](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/declarations/coefficient--4a7ae17a9ef79e5cf2ff36c1.md) | 18 | `declaration-track:4a7ae17a9ef79e5cf2ff36c1d9fa79adf54630bf851df2334a865574b7ecaca0` |
| 2 | `theorem` | [coefficient_nonneg](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/declarations/coefficient-nonneg--71b1ee05982756013f5153d2.md) | 21 | `result-track:71b1ee05982756013f5153d2252cd7a357203c9dce76376c15b1f5d74a0d74a5` |
| 3 | `def` | [actualClosedPrimeLogMass](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/declarations/actualclosedprimelogmass--0dfaec1999947b66956f46ac.md) | 31 | `declaration-track:0dfaec1999947b66956f46acf1918ab5e8874e36680938250f156987bd5f1d47` |
| 4 | `theorem` | [mass_eq_sum](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/declarations/mass-eq-sum--7944971b01f3abb37d05ee05.md) | 34 | `result-track:7944971b01f3abb37d05ee05effb541d6a6a0977d6c55f364b00180ca93e15e7` |
| 5 | `theorem` | [actualClosedPrimeLogMass_nonneg](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/declarations/actualclosedprimelogmass-nonneg--ae4883a32b5dc114a30722e5.md) | 42 | `result-track:ae4883a32b5dc114a30722e53e5edb7c50a70392d67a5729eb76512dc20ac892` |
| 6 | `theorem` | [potential_at_real_im](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/declarations/potential-at-real-im--d0147993ed68f9666dc1a9f0.md) | 47 | `result-track:d0147993ed68f9666dc1a9f0c99c3e76ebdcb6f3c590ca8f97f1b9545965a13f` |
| 7 | `theorem` | [term_norm](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/declarations/term-norm--0f3937fe5789d29eacf9502e.md) | 54 | `result-track:0f3937fe5789d29eacf9502ef55c444269ad0d06102b7a481d9a2702944b642e` |
| 8 | `theorem` | [actualClosedPrimeLogPotential_norm_le_mass](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/declarations/actualclosedprimelogpotential-norm-le-mass--a3489a1fea2f45b0042306a2.md) | 72 | `result-track:a3489a1fea2f45b0042306a27d753fd4429df14fffb44c71a913cb15e01b4999` |
| 9 | `theorem` | [actualClosedPrimePhase_disk](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/declarations/actualclosedprimephase-disk--ed09bcba02db3a5f1709f8eb.md) | 83 | `result-track:ed09bcba02db3a5f1709f8eb25ce3b7652ca743254922cee8836ffc56281a057` |
| 10 | `theorem` | [actualCenteredPrimePhase_density_le](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/declarations/actualcenteredprimephase-density-le--715b1f26d921b3bf893e0080.md) | 97 | `result-track:715b1f26d921b3bf893e00800f11efc2796cbcb69f9a1091fbcf5ad5d9ec37b9` |
| 11 | `theorem` | [slope_continuous](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/declarations/slope-continuous--f6372fd3dd1334e23ff062fc.md) | 133 | `result-track:f6372fd3dd1334e23ff062fc06a2d75564021049ea8aae4908ce19215f028a61` |
| 12 | `theorem` | [potential_continuous](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/declarations/potential-continuous--d6d8fb079bf9b2e4150cb360.md) | 141 | `result-track:d6d8fb079bf9b2e4150cb360dd5fe6d8ea0a45a113fc96821ae3ad147218bd43` |
| 13 | `theorem` | [actualCenteredPrimePhaseBulk_le_support](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/declarations/actualcenteredprimephasebulk-le-support--592f9039054b968264ecf313.md) | 147 | `result-track:592f9039054b968264ecf3132ba7bb779d9a1be24d943005b3e53f4c3aa47069` |
| 14 | `theorem` | [actualEulerMellinSlope_re_integral_eq_boundary](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/declarations/actualeulermellinslope-re-integral-eq-boundary--343d72e09fb1457b34f12ccd.md) | 184 | `result-track:343d72e09fb1457b34f12ccde7ef2e5624e7e1e25d6b879e52f3d6d601f44839` |
| 15 | `theorem` | [actualCenteredPrimePhaseBulk_le_support_endpoints](../../../../../mathematics/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/declarations/actualcenteredprimephasebulk-le-support-endpoints--a9bbb36fcc1330fb613bc5f6.md) | 208 | `result-track:a9bbb36fcc1330fb613bc5f661bbae24171811d364e1701b3c174f7daa4171cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
