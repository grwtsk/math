# Verification target: GRWTSK.Topology.GeneralTopology.SigmaComparison.Variantffef3542c52d302f0eefc5c24ffb03dc774ed149df1914ba10fa679b839123ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85db117945a69d775f4353c8b5317a7d97cee03e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SigmaComparison/Variantffef3542c52d302f0eefc5c24ffb03dc774ed149df1914ba10fa679b839123ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SigmaComparison/Variantffef3542c52d302f0eefc5c24ffb03dc774ed149df1914ba10fa679b839123ed.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SigmaComparison/Variantffef3542c52d302f0eefc5c24ffb03dc774ed149df1914ba10fa679b839123ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85db117945a69d775f4353c8b5317a7d97cee03e`.

Source path: `GRWTSK/Topology/GeneralTopology/SigmaComparison/Variantffef3542c52d302f0eefc5c24ffb03dc774ed149df1914ba10fa679b839123ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SigmaComparison/Variantffef3542c52d302f0eefc5c24ffb03dc774ed149df1914ba10fa679b839123ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHausLike.Limits` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SigmaComparison/Variantffef3542c52d302f0eefc5c24ffb03dc774ed149df1914ba10fa679b839123ed.lean/declarations/instance--79db3b917190f12b8c62477e.md) | 32 | `declaration-track:79db3b917190f12b8c62477ea8b6a6830415c041e85f5b0436ca960d4e7f9d94` |
| 2 | `def` | [sigmaComparison](../../../../../mathematics/Topology/GeneralTopology/SigmaComparison/Variantffef3542c52d302f0eefc5c24ffb03dc774ed149df1914ba10fa679b839123ed.lean/declarations/sigmacomparison--83953111baae966422b7f75c.md) | 38 | `declaration-track:83953111baae966422b7f75ca6b326857e7a5225d5438925b14a9fe6572faad4` |
| 3 | `theorem` | [sigmaComparison_eq_comp_isos](../../../../../mathematics/Topology/GeneralTopology/SigmaComparison/Variantffef3542c52d302f0eefc5c24ffb03dc774ed149df1914ba10fa679b839123ed.lean/declarations/sigmacomparison-eq-comp-isos--f9ad28cb0031d3e72f30cc81.md) | 41 | `result-track:f9ad28cb0031d3e72f30cc81f69becd53e6b8221d1a1b31de0d32aa84397f0ea` |
| 4 | `instance` | [isIsoSigmaComparison](../../../../../mathematics/Topology/GeneralTopology/SigmaComparison/Variantffef3542c52d302f0eefc5c24ffb03dc774ed149df1914ba10fa679b839123ed.lean/declarations/isisosigmacomparison--ebe008fbb760b6ed6bb1d817.md) | 62 | `declaration-track:ebe008fbb760b6ed6bb1d817a15faa092946d9f5662ad2d794deac58b8c796b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
