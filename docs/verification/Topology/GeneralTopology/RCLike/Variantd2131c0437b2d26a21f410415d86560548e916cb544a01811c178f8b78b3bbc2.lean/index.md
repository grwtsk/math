# Verification target: GRWTSK.Topology.GeneralTopology.RCLike.Variantd2131c0437b2d26a21f410415d86560548e916cb544a01811c178f8b78b3bbc2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3462b9c785fa89cf93470d4589a1ad0b9a607b01",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RCLike/Variantd2131c0437b2d26a21f410415d86560548e916cb544a01811c178f8b78b3bbc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RCLike/Variantd2131c0437b2d26a21f410415d86560548e916cb544a01811c178f8b78b3bbc2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RCLike/Variantd2131c0437b2d26a21f410415d86560548e916cb544a01811c178f8b78b3bbc2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3462b9c785fa89cf93470d4589a1ad0b9a607b01`.

Source path: `GRWTSK/Topology/GeneralTopology/RCLike/Variantd2131c0437b2d26a21f410415d86560548e916cb544a01811c178f8b78b3bbc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RCLike/Variantd2131c0437b2d26a21f410415d86560548e916cb544a01811c178f8b78b3bbc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_inverse_atTop_nhds_zero_nat](../../../../../mathematics/Topology/GeneralTopology/RCLike/Variantd2131c0437b2d26a21f410415d86560548e916cb544a01811c178f8b78b3bbc2.lean/declarations/tendsto-inverse-attop-nhds-zero-nat--2e54364dd8ca6eeae75facfd.md) | 29 | `result-track:2e54364dd8ca6eeae75facfd9cd78722cc32882993da89577d8d0c246fcb17d9` |
| 2 | `theorem` | [tendsto_ofReal_cobounded_cobounded](../../../../../mathematics/Topology/GeneralTopology/RCLike/Variantd2131c0437b2d26a21f410415d86560548e916cb544a01811c178f8b78b3bbc2.lean/declarations/tendsto-ofreal-cobounded-cobounded--2326e7019e4cc3ca3c57db13.md) | 34 | `result-track:2326e7019e4cc3ca3c57db13e8ca0bf4c9fe73da7f6052123349377778cadbc6` |
| 3 | `theorem` | [tendsto_ofReal_atTop_cobounded](../../../../../mathematics/Topology/GeneralTopology/RCLike/Variantd2131c0437b2d26a21f410415d86560548e916cb544a01811c178f8b78b3bbc2.lean/declarations/tendsto-ofreal-attop-cobounded--640607a2c420a3c60465a47e.md) | 38 | `result-track:640607a2c420a3c60465a47e61a38db4ea6a74fd77a9c5f76ef185dfbec0b357` |
| 4 | `theorem` | [tendsto_ofReal_atBot_cobounded](../../../../../mathematics/Topology/GeneralTopology/RCLike/Variantd2131c0437b2d26a21f410415d86560548e916cb544a01811c178f8b78b3bbc2.lean/declarations/tendsto-ofreal-atbot-cobounded--bca1b94eb8674876b5190e95.md) | 42 | `result-track:bca1b94eb8674876b5190e9533958c0859399008b8e4c37c48c74454905ebfc3` |
| 5 | `theorem` | [tendsto_add_mul_div_add_mul_atTop_nhds](../../../../../mathematics/Topology/GeneralTopology/RCLike/Variantd2131c0437b2d26a21f410415d86560548e916cb544a01811c178f8b78b3bbc2.lean/declarations/tendsto-add-mul-div-add-mul-attop-nhds--77e890a914c162b7b63eb114.md) | 48 | `result-track:77e890a914c162b7b63eb114dbbf9f79b2421139b5c580317a1813c6ed88783d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
