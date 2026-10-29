# Verification target: Completion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ff5a4e60912c332f860f68c01e3d9b048f98724",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant19cfacd329cf19ff4e9d29e788d79fc327fb293850228c3c626f4377095d3941.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Completion.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Completion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ff5a4e60912c332f860f68c01e3d9b048f98724`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant19cfacd329cf19ff4e9d29e788d79fc327fb293850228c3c626f4377095d3941.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Completion/Variant19cfacd329cf19ff4e9d29e788d79fc327fb293850228c3c626f4377095d3941.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.Hilbert.Quotient` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RhetoricalSpace](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Completion.lean/declarations/rhetoricalspace.md) | 20 | `declaration-track:fec33f6c1c4b8857ba0b487cf5b502ba27cfaa406e55edffbebc4c68d673a8ce` |
| 2 | `def` | [completePreRhetorical](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Completion.lean/declarations/completeprerhetorical.md) | 25 | `declaration-track:82ddee370266003e04101f08a38f40a9c37d1081f5c128aaa5775cf43c323c26` |
| 3 | `def` | [rhetoricalSpace_hilbertStructure](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Completion.lean/declarations/rhetoricalspace-hilbertstructure.md) | 30 | `declaration-track:66955f6d4791f2de76871d6a93b8ab6b279b9f0293ab81a79a50e8527f82cbe7` |
| 4 | `theorem` | [rhetoricalSpace_isHilbert](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Completion.lean/declarations/rhetoricalspace-ishilbert.md) | 35 | `result-track:c7db645b56e526c1aad38e1b025e43b9fedafdfc6ae116624bc8ab91ce960649` |
| 5 | `theorem` | [inner_completePreRhetorical](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Completion.lean/declarations/inner-completeprerhetorical.md) | 41 | `result-track:ec304784084d995371efe8f34c54789b71fb45b9087602d324753cf282ecf085` |
| 6 | `theorem` | [completePreRhetorical_denseRange](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/Completion.lean/declarations/completeprerhetorical-denserange.md) | 49 | `result-track:59c839b0a0cf836d994156619423fec88e2d51ed4e5bbd7091ade1998b8b78c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd5cdfae64a9caeffd01175bd6f483c15ec5af4885dfed76832e16d74a23fb48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant19cfacd329cf19ff4e9d29e788d79fc327fb293850228c3c626f4377095d3941.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Completion/Variant19cfacd329cf19ff4e9d29e788d79fc327fb293850228c3c626f4377095d3941.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
