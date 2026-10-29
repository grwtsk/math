-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.Comp.Variant6240836468494abd198d5d53a6f45083186e856e65e58b2db93a08d80afc9890","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6240836468494abd198d5d53a6f45083186e856e65e58b2db93a08d80afc9890","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.Comp.Variant6240836468494abd198d5d53a6f45083186e856e65e58b2db93a08d80afc9890","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"6240836468494abd198d5d53a6f45083186e856e65e58b2db93a08d80afc9890","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Comparison/Composition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Comparison.Properties
import DAF.Comparison.LogicalStatus
import DAF.Comparison.Scope
import DAF.Causal
import DAF.Refinement
import DAF.Upgrade

/-!
# Certified comparison composition and DAF adapters

Comparison maps compose as functions.  Their claims, proof assumptions,
coefficient compatibility, and ownership scope remain separate.  Direct
certified composition requires equality of adjacent coefficient contexts;
otherwise an explicit `CoefficientChange` must be supplied.

The adapters below reuse the existing DAF theorems.  A state equivalence is
not thereby a chain equivalence, and none of these state-level adapters enables
determinant transport.
-/


namespace GRWTSK.Geometry.AlgebraicGeometry.Comp.Variant6240836468494abd198d5d53a6f45083186e856e65e58b2db93a08d80afc9890

namespace DAF.Comparison

universe u v w x c

namespace Claim

/-- The composite research claim states both component claims, without proof. -/
def comp
    {f : Spec A B} {g : Spec B C}
    (Pg : Claim g) (Pf : Claim f) : Claim (g.comp f) :=
  ⟨Pf.statement ∧ Pg.statement⟩

end Claim

namespace ConditionalCertificate

/-- Conditional proofs compose with the conjunction of their hypotheses. -/
def comp
    {f : Spec A B} {g : Spec B C}
    {Pf : Claim f} {Pg : Claim g}
    (hg : ConditionalCertificate g Pg)
    (hf : ConditionalCertificate f Pf) :
    ConditionalCertificate (g.comp f) (Pg.comp Pf) where
  Hypothesis := hf.Hypothesis ∧ hg.Hypothesis
  proof := fun h ↦ ⟨hf.proof h.1, hg.proof h.2⟩

@[simp]
theorem comp_Hypothesis
    {f : Spec A B} {g : Spec B C}
    {Pf : Claim f} {Pg : Claim g}
    (hg : ConditionalCertificate g Pg)
    (hf : ConditionalCertificate f Pf) :
    (hg.comp hf).Hypothesis = (hf.Hypothesis ∧ hg.Hypothesis) :=
  rfl

end ConditionalCertificate

namespace Certified

/--
Compose comparisons whose adjacent coefficient contexts are proved equal.
The proof argument is the compatibility gate; the result retains the outer
coefficient contexts and the conjunction of all assumptions and properties.
-/
def comp
    (g : Certified B C)
    (f : Certified A B)
    (_coefficientCompatible :
      f.coefficientTarget = g.coefficientSource) : Certified A C where
  spec := g.spec.comp f.spec
  coefficientSource := f.coefficientSource
  coefficientTarget := g.coefficientTarget
  scope := Scope.comp f.scope g.scope
  Property := f.Property ∧ g.Property
  Assumptions := f.Assumptions ∧ g.Assumptions
  certified := fun h ↦ ⟨f.certified h.1, g.certified h.2⟩

/--
Compose across unequal coefficient endpoints only after an explicit scalar
map has been supplied.  This operation records compatibility; it does not
pretend scalar extension is definitionally the identity.
-/
def compWithCoefficientChange
    (g : Certified B C)
    (f : Certified A B)
    (_change : CoefficientChange f.coefficientTarget g.coefficientSource) :
    Certified A C where
  spec := g.spec.comp f.spec
  coefficientSource := f.coefficientSource
  coefficientTarget := g.coefficientTarget
  scope := Scope.comp f.scope g.scope
  Property := f.Property ∧ g.Property
  Assumptions := f.Assumptions ∧ g.Assumptions
  certified := fun h ↦ ⟨f.certified h.1, g.certified h.2⟩

@[simp]
theorem comp_spec
    (g : Certified B C) (f : Certified A B)
    (h : f.coefficientTarget = g.coefficientSource) :
    (g.comp f h).spec = g.spec.comp f.spec :=
  rfl

@[simp]
theorem comp_Assumptions
    (g : Certified B C) (f : Certified A B)
    (h : f.coefficientTarget = g.coefficientSource) :
    (g.comp f h).Assumptions = (f.Assumptions ∧ g.Assumptions) :=
  rfl

@[simp]
theorem comp_Property
    (g : Certified B C) (f : Certified A B)
    (h : f.coefficientTarget = g.coefficientSource) :
    (g.comp f h).Property = (f.Property ∧ g.Property) :=
  rfl

end Certified

end DAF.Comparison

namespace DAF

universe uI uX uR uO

namespace System

variable {L M N : System}

namespace Hom

/-- The state map of a system homomorphism as a property-free comparison. -/
def toComparisonSpec (F : M.Hom N) :
    Comparison.Spec M.State N.State :=
  ⟨F.mapState⟩

@[simp]
theorem toComparisonSpec_apply (F : M.Hom N) (x : M.State) :
    F.toComparisonSpec.map x = F.mapState x :=
  rfl

/-- System composition agrees definitionally with comparison composition. -/
theorem toComparisonSpec_comp (g : M.Hom N) (f : L.Hom M) :
    (g.comp f).toComparisonSpec =
      g.toComparisonSpec.comp f.toComparisonSpec :=
  rfl

/-- Existing causal transport, exposed as a comparison without reproof. -/
def causalStateComparisonSpec
    (F : M.Hom N)
    (hInput : Function.Surjective F.mapInput) :
    Comparison.Spec M.CausalState N.CausalState :=
  ⟨F.causalStateMap hInput⟩

end Hom

namespace Factor

def toComparisonSpec (F : M.Factor N) :
    Comparison.Spec M.State N.State :=
  F.toHom.toComparisonSpec

theorem toComparison_surjective (F : M.Factor N) :
    Comparison.IsSurjective F.toComparisonSpec :=
  F.state_surjective

def causalStateComparisonSpec
    (F : M.Factor N)
    (hInput : Function.Surjective F.toHom.mapInput) :
    Comparison.Spec M.CausalState N.CausalState :=
  F.toHom.causalStateComparisonSpec hInput

theorem causalStateComparison_surjective
    (F : M.Factor N)
    (hInput : Function.Surjective F.toHom.mapInput) :
    Comparison.IsSurjective (F.causalStateComparisonSpec hInput) :=
  F.causalStateMap_surjective hInput

end Factor

namespace Iso

def toComparisonSpec (F : M.Iso N) :
    Comparison.Spec M.State N.State :=
  F.hom.toComparisonSpec

theorem toComparison_bijective (F : M.Iso N) :
    Comparison.IsBijective F.toComparisonSpec :=
  F.hom_state_bijective

noncomputable def causalStateComparisonSpec (F : M.Iso N) :
    Comparison.Spec M.CausalState N.CausalState :=
  ⟨F.causalStateEquiv⟩

theorem causalStateComparison_bijective (F : M.Iso N) :
    Comparison.IsBijective F.causalStateComparisonSpec :=
  F.causalStateEquiv.bijective

end Iso

end System

namespace Refinement

variable {Spec Impl : System}

/-- The existing implementation abstraction map as a comparison. -/
def toComparisonSpec (R : Refinement Spec Impl) :
    Comparison.Spec Impl.State Spec.State :=
  ⟨R.abstract⟩

@[simp]
theorem toComparisonSpec_apply (R : Refinement Spec Impl) (x : Impl.State) :
    R.toComparisonSpec.map x = R.abstract x :=
  rfl

end Refinement

namespace RepresentationRefinement

variable {Spec Impl : System}

def abstractionComparisonSpec (R : RepresentationRefinement Spec Impl) :
    Comparison.Spec Impl.State Spec.State :=
  R.toRefinement.toComparisonSpec

def representationComparisonSpec (R : RepresentationRefinement Spec Impl) :
    Comparison.Spec Spec.State Impl.State :=
  ⟨R.represent⟩

theorem representationComparison_injective
    (R : RepresentationRefinement Spec Impl) :
    Comparison.IsInjective R.representationComparisonSpec :=
  R.represent_injective

theorem abstraction_leftInverse_representation
    (R : RepresentationRefinement Spec Impl) :
    Comparison.IsLeftInverseOf
      R.abstractionComparisonSpec R.representationComparisonSpec :=
  R.abstract_represent

end RepresentationRefinement

universe u v w₀ w₁ w₂

namespace WorkspaceUpgrade

/-- A projectwise public upgrade map as a comparison. -/
def mapPublicComparisonSpec
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (p : G.ProjectId) :
    Comparison.Spec (W₀.Export p) (W₁.Export p) :=
  ⟨U.mapPublic p⟩

/-- Composition of same-graph workspace upgrades. -/
def comp
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    {W₂ : WorkspaceDiagram.{u, v, w₂} G}
    (V : WorkspaceUpgrade W₁ W₂)
    (U : WorkspaceUpgrade W₀ W₁) : WorkspaceUpgrade W₀ W₂ where
  mapPublic := fun p x ↦ V.mapPublic p (U.mapPublic p x)
  semantics_natural := by
    intro p env
    rw [U.semantics_natural, V.semantics_natural]

theorem mapPublicComparisonSpec_comp
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    {W₂ : WorkspaceDiagram.{u, v, w₂} G}
    (V : WorkspaceUpgrade W₁ W₂)
    (U : WorkspaceUpgrade W₀ W₁)
    (p : G.ProjectId) :
    (V.comp U).mapPublicComparisonSpec p =
      (V.mapPublicComparisonSpec p).comp (U.mapPublicComparisonSpec p) :=
  rfl

/-- Upgrade a tenant's complete public environment as one typed comparison. -/
def tenantEnvironmentComparisonSpec
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (tenant : Tenant G) :
    Comparison.Spec
      (tenant.Environment W₀.Export)
      (tenant.Environment W₁.Export) :=
  ⟨Upgrade.tenantEnvironmentMap U tenant⟩

/-- Tenant-environment upgrade composition is comparison composition. -/
theorem tenantEnvironmentComparisonSpec_comp
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    {W₂ : WorkspaceDiagram.{u, v, w₂} G}
    (V : WorkspaceUpgrade W₁ W₂)
    (U : WorkspaceUpgrade W₀ W₁)
    (tenant : Tenant G) :
    (V.comp U).tenantEnvironmentComparisonSpec tenant =
      (V.tenantEnvironmentComparisonSpec tenant).comp
        (U.tenantEnvironmentComparisonSpec tenant) :=
  rfl

end WorkspaceUpgrade

namespace FactorUpgrade

def mapPublicComparisonSpec
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : FactorUpgrade W₀ W₁)
    (p : G.ProjectId) :
    Comparison.Spec (W₀.Export p) (W₁.Export p) :=
  U.toWorkspaceUpgrade.mapPublicComparisonSpec p

theorem mapPublicComparison_surjective
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : FactorUpgrade W₀ W₁)
    (p : G.ProjectId) :
    Comparison.IsSurjective (U.mapPublicComparisonSpec p) :=
  U.map_surjective p

end FactorUpgrade

namespace EquivalenceUpgrade

def mapPublicComparisonSpec
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : EquivalenceUpgrade W₀ W₁)
    (p : G.ProjectId) :
    Comparison.Spec (W₀.Export p) (W₁.Export p) :=
  U.toWorkspaceUpgrade.mapPublicComparisonSpec p

theorem mapPublicComparison_bijective
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : EquivalenceUpgrade W₀ W₁)
    (p : G.ProjectId) :
    Comparison.IsBijective (U.mapPublicComparisonSpec p) :=
  U.map_bijective p

end EquivalenceUpgrade

namespace RefinementUpgrade

def mapPublicComparisonSpec
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : RefinementUpgrade W₀ W₁)
    (p : G.ProjectId) :
    Comparison.Spec (W₀.Export p) (W₁.Export p) :=
  U.toWorkspaceUpgrade.mapPublicComparisonSpec p

theorem mapPublicComparison_bijective
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : RefinementUpgrade W₀ W₁)
    (p : G.ProjectId) :
    Comparison.IsBijective (U.mapPublicComparisonSpec p) :=
  U.map_bijective p

end RefinementUpgrade

end DAF
