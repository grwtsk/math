# Verification target: Limit Correspondence Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff2aea47da6f82ab36d88987a5fd43559f7c4039",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LimitCorrespondence/Variant04e80ad43696842929353f1c0a3afd943a7294a79c01872c9795c6d9176795d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LimitCorrespondenceNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/LimitCorrespondenceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff2aea47da6f82ab36d88987a5fd43559f7c4039`.

Source path: `GRWTSK/Topology/GeneralTopology/LimitCorrespondence/Variant04e80ad43696842929353f1c0a3afd943a7294a79c01872c9795c6d9176795d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LimitCorrespondence/Variant04e80ad43696842929353f1c0a3afd943a7294a79c01872c9795c6d9176795d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.Arithmetic.SuccessorCorrespondence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.Trace.LimitObservable` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArithmeticLimitMode](../../../../GeneralTopology/LimitCorrespondenceNamespaced.lean/declarations/arithmeticlimitmode.md) | 31 | `declaration-track:0e0705dadd61f3d06d7aad3af919d4e4874e8fc166d96fcaf6dec3786bdef980` |
| 2 | `structure` | [TestSpaceCompatibilityCertificate](../../../../GeneralTopology/LimitCorrespondenceNamespaced.lean/declarations/testspacecompatibilitycertificate.md) | 37 | `declaration-track:1d013ec99e2b30470d0091e2ea2e4d4cf8bca0916805049717553172e8834ea4` |
| 3 | `structure` | [NormalizedLimitArithmeticCorrespondence](../../../../GeneralTopology/LimitCorrespondenceNamespaced.lean/declarations/normalizedlimitarithmeticcorrespondence.md) | 63 | `declaration-track:d5675371b60d574386684cba6468e18eb779a7de92115ecdbea337b66ef612d3` |
| 4 | `abbrev` | [LimitArithmeticCorrespondence](../../../../GeneralTopology/LimitCorrespondenceNamespaced.lean/declarations/limitarithmeticcorrespondence.md) | 136 | `declaration-track:8d646528f0f83614d09691c090837d7e942df267aa65719a4e3ad54e5434e217` |
| 5 | `theorem` | [normalized_limit_arithmetic_trace_correspondence](../../../../GeneralTopology/LimitCorrespondenceNamespaced.lean/declarations/normalized-limit-arithmetic-trace-correspondence.md) | 139 | `result-track:824c426fba3ed65ca322c498e9d40052b30bec70691d2d6074decb0f200b8dda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fd9c4a0e957167cc65bf47863f46bd2f5c078011f2b0f75fa31adc6fe4ba86b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LimitCorrespondence/Variant04e80ad43696842929353f1c0a3afd943a7294a79c01872c9795c6d9176795d5.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LimitCorrespondence/Variant04e80ad43696842929353f1c0a3afd943a7294a79c01872c9795c6d9176795d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
