# Verification target: GRWTSK.Topology.GeneralTopology.ULift.Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d023c3f9a97d70558189343de9d0e94a2fb88cb6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ULift/Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ULift/Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ULift/Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d023c3f9a97d70558189343de9d0e94a2fb88cb6`.

Source path: `GRWTSK/Topology/GeneralTopology/ULift/Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ULift/Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uliftFunctor](../../../../../mathematics/Topology/GeneralTopology/ULift/Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281.lean/declarations/uliftfunctor--7e42cd49662871b3978e951c.md) | 28 | `declaration-track:7e42cd49662871b3978e951cd8c9ddebe961b07027ffeb4caed1d94cff4b3bf6` |
| 2 | `def` | [uliftFunctorObjHomeo](../../../../../mathematics/Topology/GeneralTopology/ULift/Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281.lean/declarations/uliftfunctorobjhomeo--a281b9b67759175531dd04dc.md) | 33 | `declaration-track:a281b9b67759175531dd04dcd9364bc9570c886bada7af74f211028d1078ccfc` |
| 3 | `lemma` | [uliftFunctorObjHomeo_naturality_apply](../../../../../mathematics/Topology/GeneralTopology/ULift/Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281.lean/declarations/uliftfunctorobjhomeo-naturality-apply--fc8e65a4e2b08c097cc682e7.md) | 37 | `result-track:fc8e65a4e2b08c097cc682e7d0ef90c755097f66e2b8a92cf0a2c5965f38d46b` |
| 4 | `lemma` | [uliftFunctorObjHomeo_symm_naturality_apply](../../../../../mathematics/Topology/GeneralTopology/ULift/Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281.lean/declarations/uliftfunctorobjhomeo-symm-naturality-apply--91df1e3d1f93d6782fedbcd8.md) | 42 | `result-track:91df1e3d1f93d6782fedbcd80f58bc0153d5d38c4315c20786d0118f917d3587` |
| 5 | `def` | [uliftFunctorCompForgetIso](../../../../../mathematics/Topology/GeneralTopology/ULift/Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281.lean/declarations/uliftfunctorcompforgetiso--65ae8437d1c5687f056427b5.md) | 51 | `declaration-track:65ae8437d1c5687f056427b5f60d231551f1770436a900e46e6df83bb998b4d3` |
| 6 | `def` | [uliftFunctorFullyFaithful](../../../../../mathematics/Topology/GeneralTopology/ULift/Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281.lean/declarations/uliftfunctorfullyfaithful--dc399ed1ce8e70197dfb1eab.md) | 55 | `declaration-track:dc399ed1ce8e70197dfb1eab0d39156e96839ff4d2d42b1dd925b2cef23f7537` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ULift/Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281.lean/declarations/instance--8ad813a6fce865a5c1c82af9.md) | 58 | `declaration-track:8ad813a6fce865a5c1c82af96cb4fef7dda410289987f48133e4830aeebb9b75` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ULift/Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281.lean/declarations/instance--429ee601f74dcfeaa6226815.md) | 61 | `declaration-track:429ee601f74dcfeaa6226815b16f01fd623e1d2246f5cf194be5ff5904c34455` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
