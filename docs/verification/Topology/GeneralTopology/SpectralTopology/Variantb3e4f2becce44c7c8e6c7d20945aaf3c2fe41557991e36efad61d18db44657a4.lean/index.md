# Verification target: GRWTSK.Topology.GeneralTopology.SpectralTopology.Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed5763a0a62cbacd2df637e5b7efee9471d5bd04",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed5763a0a62cbacd2df637e5b7efee9471d5bd04`.

Source path: `GRWTSK/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CordTheory.FiniteFunctionAlgebra` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeroIndicator](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean/declarations/zeroindicator--cf580fcb375694bc947dd129.md) | 18 | `declaration-track:cf580fcb375694bc947dd129a3fd69293f10b61751678d40d6708e46e4a02af2` |
| 2 | `theorem` | [zeroIndicator_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean/declarations/zeroindicator-eq-zero-iff--b226a1fc1f7964a2f249998e.md) | 24 | `result-track:b226a1fc1f7964a2f249998ed2fad0fd05710a0cb7c68c74716ea39dc851ede7` |
| 3 | `theorem` | [every_set_is_zero_locus](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean/declarations/every-set-is-zero-locus--55dfa7988904a3b98105a228.md) | 31 | `result-track:55dfa7988904a3b98105a2286c06abc436c61e4c8c8974dcb9f198941909c9bf` |
| 4 | `def` | [finiteSpectralTopology](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean/declarations/finitespectraltopology--05c6c6fb1770f86eb3694c96.md) | 37 | `declaration-track:05c6c6fb1770f86eb3694c96b8efb715302293ea5324f5d5a29952a8275a097b` |
| 5 | `theorem` | [finiteSpectralTopology_isOpen](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean/declarations/finitespectraltopology-isopen--6bfc14289334fef750d79d31.md) | 49 | `result-track:6bfc14289334fef750d79d31e99ceb9d25221248c0068877a7d2f11b0e7adbd4` |
| 6 | `theorem` | [finiteSpectralTopology_isClosed](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean/declarations/finitespectraltopology-isclosed--1fda45c0a3f6fd5c3820a3f1.md) | 55 | `result-track:1fda45c0a3f6fd5c3820a3f11e6663bea6339a55901d2f84b48c6701c08b7c4e` |
| 7 | `theorem` | [singleton_clopen](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean/declarations/singleton-clopen--c25189bd93b10304ecaabf6f.md) | 62 | `result-track:c25189bd93b10304ecaabf6fac4c145a0f3736d61d66513ab55825f0dee43ba2` |
| 8 | `theorem` | [full_function_determining_sample_eq_univ](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean/declarations/full-function-determining-sample-eq-univ--4f4d71c392983a8844db2649.md) | 69 | `result-track:4f4d71c392983a8844db264949414d928dd3ff3c3b6a2f9e2849eedf8a1489ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
