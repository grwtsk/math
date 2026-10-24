# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.SeparatingDual.Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79962e3ae2073fe1eb5fb0c5f242ca3bd78ab4a5",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79962e3ae2073fe1eb5fb0c5f242ca3bd78ab4a5`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.HahnBanach.Extension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.HahnBanach.Separation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Multilinear.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SeparatingDual](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/declarations/separatingdual--f2b0309463c0369012d2c1cb.md) | 28 | `declaration-track:f2b0309463c0369012d2c1cbf2ffb70b279575bd8999547f27a2205ddef5fdb6` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/declarations/instance--9c696697199eda5d6405dbab.md) | 33 | `declaration-track:9c696697199eda5d6405dbab559d987055986ca566f2e33e599bcfafead35652` |
| 3 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/declarations/instance--b4b1f21dcdc7663218f632e9.md) | 40 | `declaration-track:b4b1f21dcdc7663218f632e90d3938f58a35daa0b21bb93b1bb4fb260eb482be` |
| 4 | `lemma` | [exists_ne_zero](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/declarations/exists-ne-zero--06cdedf6c8a3b8f65dcd8bc6.md) | 53 | `result-track:06cdedf6c8a3b8f65dcd8bc624d787987e2f3d437baaf259e1d294b48495394c` |
| 5 | `theorem` | [exists_separating_of_ne](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/declarations/exists-separating-of-ne--4e1ab56dc72db8f58cd8b040.md) | 57 | `result-track:4e1ab56dc72db8f58cd8b0405f167bd4843668b08e71f43929b8d875ed7a0146` |
| 6 | `theorem` | [t1Space](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/declarations/t1space--1d3401be2def1362243e2959.md) | 62 | `result-track:1d3401be2def1362243e29598afd08e162070e2e674177c3a24b7a6821e6fa22` |
| 7 | `theorem` | [t2Space](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/declarations/t2space--c0919cedc362398d7630e0fa.md) | 67 | `result-track:c0919cedc362398d7630e0fa65acc003676937a0da3a9e6ad6440f0a21dd30f0` |
| 8 | `theorem` | [_root_.separatingDual_iff_injective](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/declarations/root-separatingdual-iff-injective--17e52bd37fa13025b6fd2c6a.md) | 80 | `result-track:17e52bd37fa13025b6fd2c6a2df7503419acdd49a390967fb039ebba8516a293` |
| 9 | `theorem` | [dualMap_surjective_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/declarations/dualmap-surjective-iff--a0ad357f163ce6b577a26a0f.md) | 93 | `result-track:a0ad357f163ce6b577a26a0f221bf3ae980f97a83433f590ab1b27bfe0d23d29` |
| 10 | `lemma` | [exists_eq_one](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/declarations/exists-eq-one--bd29dfff902e1564e17009d4.md) | 101 | `result-track:bd29dfff902e1564e17009d459c723f9dd38013f5b83cbeec10d012bbbd12513` |
| 11 | `theorem` | [exists_eq_one_ne_zero_of_ne_zero_pair](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/declarations/exists-eq-one-ne-zero-of-ne-zero-pair--cf0d2453cb08d17c09a60768.md) | 106 | `result-track:cf0d2453cb08d17c09a60768ee3b0755ac404bfeebeeaec6abac7abc1f36640c` |
| 12 | `theorem` | [exists_continuousLinearEquiv_apply_eq](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/declarations/exists-continuouslinearequiv-apply-eq--880387e3a04a91371bbd4bb6.md) | 121 | `result-track:880387e3a04a91371bbd4bb6803eeef5d7df12b1d56a815cc5480c75a7695ce2` |
| 13 | `lemma` | [completeSpace_of_completeSpace_continuousLinearMap](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/declarations/completespace-of-completespace-continuouslinearmap--970705a7c406c4cc2df3c761.md) | 159 | `result-track:970705a7c406c4cc2df3c7612406dc67be06b36ec223ab283d5b63baa9ceec5a` |
| 14 | `lemma` | [completeSpace_continuousLinearMap_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/declarations/completespace-continuouslinearmap-iff--4cfa360fa07504eb91a8381b.md) | 173 | `result-track:4cfa360fa07504eb91a8381b7c7a39562a33ee8ad8c968fa13adda8cea73e4b3` |
| 15 | `lemma` | [completeSpace_of_completeSpace_continuousMultilinearMap](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/declarations/completespace-of-completespace-continuousmultilinearmap--1aa9ce49c2d60086a044a03a.md) | 184 | `result-track:1aa9ce49c2d60086a044a03ae152b9b3753fc5a320fc265ed556dc5c452052a6` |
| 16 | `lemma` | [completeSpace_continuousMultilinearMap_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/declarations/completespace-continuousmultilinearmap-iff--9d9dfc782146c4aaf90ff843.md) | 202 | `result-track:9d9dfc782146c4aaf90ff8430dbb401859f847394fedaf3a9c8e8b4a32001612` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
