# Verification target: GRWTSK.Topology.GeneralTopology.ULift.Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9da0a33b637d29fe9042f1f94861ce0aaad9beee",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9da0a33b637d29fe9042f1f94861ce0aaad9beee`.

Source path: `GRWTSK/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uliftFunctor](../../../../../mathematics/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean/declarations/uliftfunctor--96e9a43b77d6d07f398773ba.md) | 41 | `declaration-track:96e9a43b77d6d07f398773ba885321ea76e36913ee8bfdd425524351c21e230d` |
| 2 | `def` | [uliftFunctorObjHomeo](../../../../../mathematics/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean/declarations/uliftfunctorobjhomeo--902aaf942748a2c148e569e8.md) | 46 | `declaration-track:902aaf942748a2c148e569e8aaa48e15cba23136f5a836d3fefad003bd836a9b` |
| 3 | `lemma` | [uliftFunctorObjHomeo_naturality_apply](../../../../../mathematics/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean/declarations/uliftfunctorobjhomeo-naturality-apply--6c00f72777879fb561914c3c.md) | 50 | `result-track:6c00f72777879fb561914c3cf090e0a8c2edb941f5ebf5edfb6940f03f8698fe` |
| 4 | `lemma` | [uliftFunctorObjHomeo_symm_naturality_apply](../../../../../mathematics/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean/declarations/uliftfunctorobjhomeo-symm-naturality-apply--ea2efa961dac915cca018a32.md) | 55 | `result-track:ea2efa961dac915cca018a321b8ce4cb83193a76bea225e74eac14687ce14c6f` |
| 5 | `def` | [uliftFunctorCompForgetIso](../../../../../mathematics/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean/declarations/uliftfunctorcompforgetiso--014652c5257c4e31cb179f3a.md) | 64 | `declaration-track:014652c5257c4e31cb179f3ad438388e1b8dd001789e1baa1ea35aa176cd57ff` |
| 6 | `def` | [uliftFunctorFullyFaithful](../../../../../mathematics/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean/declarations/uliftfunctorfullyfaithful--cd759bf1df5ed75429df7c97.md) | 69 | `declaration-track:cd759bf1df5ed75429df7c97d09e9be339e9805682bec66bada1e4a658e52db8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean/declarations/instance--96b65de081c3d7b1ba5b85d0.md) | 72 | `declaration-track:96b65de081c3d7b1ba5b85d088c7dfed88e08739dd0c04850da03a63d8558ac1` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean/declarations/instance--8cb53030bc107828017e5c34.md) | 75 | `declaration-track:8cb53030bc107828017e5c346ed7922de4103801f6ac2961b2675f39267a0f62` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean/declarations/instance--9adfdb99f447107d7ecca9d7.md) | 81 | `declaration-track:9adfdb99f447107d7ecca9d7001407a96e6d4bb37f50e042c9eef68b3055a674` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ULift/Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b.lean/declarations/instance--d7b35e388b33f7bda9b9c79f.md) | 99 | `declaration-track:d7b35e388b33f7bda9b9c79ff7c2b05786b8ad2154fdd489cc24416f092e4834` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
