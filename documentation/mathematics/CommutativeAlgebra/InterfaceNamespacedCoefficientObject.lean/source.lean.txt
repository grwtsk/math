-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.CoefficientObject.Variantec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.CoefficientObject.Variantec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2","mathematical_subject":"Algebra.Groups","original_sha256":"ec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Arithmetic/Interface.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Assembly.Interface
import DAF.Comparison.Coefficients
import Mathlib.Algebra.MonoidAlgebra.Basic

/-!
# Arithmetic-realization interfaces

The structures in this module are parameters for arithmetic comparison
problems; they are not global existence theorems.  A representation of a group
in the units of a number ring is additional input, and the proof that a group
ring map is induced by that representation is stored with the input.

Likewise, an arithmetic K-theory or etale comparison is represented through a
supplied functoriality/comparison interface.  No ordinary homology group is
identified with algebraic K-theory here, and no K-theory comparison is assumed
to be bijective without its named hypothesis.  Localization and completion
change coefficient objects; an explicit coefficient change therefore remains
in the type of every etale comparison datum.
-/


namespace GRWTSK.Algebra.GroupTheory.CoefficientObject.Variantec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2

namespace DAF.Arithmetic

open scoped MonoidAlgebra

universe uG uR uS uT uK uE uP

/--
An object belonging to a particular coefficient context.

This is intentionally a structure rather than an abbreviation: even when two
models happen to use the same carrier type, an object over `R` is not
definitionally an object over `S`.  Additional module, topology, or completion
data can be carried by theory-specific refinements of this minimal interface.
-/
structure CoefficientObject
    (R : Comparison.CoefficientContext.{uR}) where
  Carrier : Type uK

/--
A group representation together with its induced integral group-ring map.

`groupRingMap_single` prevents an unrelated ring homomorphism from being
presented as the realization induced by `representation`.
-/
structure RepresentationDatum where
  Group : Type uG
  NumberRing : Type uR
  [instGroup : _root_.Group Group]
  [instCommRing : CommRing NumberRing]
  representation : Group →* NumberRingˣ
  groupRingMap : MonoidAlgebra ℤ Group →+* NumberRing
  groupRingMap_single :
    ∀ g : Group,
      groupRingMap (MonoidAlgebra.single g 1) =
        (representation g : NumberRing)

namespace RepresentationDatum

instance (A : RepresentationDatum) : _root_.Group A.Group :=
  A.instGroup

instance (A : RepresentationDatum) : CommRing A.NumberRing :=
  A.instCommRing

/-- The representation is recovered by evaluating the group-ring map on generators. -/
@[simp]
theorem groupRingMap_of
    (A : RepresentationDatum)
    (g : A.Group) :
    A.groupRingMap (MonoidAlgebra.single g 1) =
      (A.representation g : A.NumberRing) :=
  A.groupRingMap_single g

end RepresentationDatum

/--
Supplied functoriality data for the K-theory map induced by one arithmetic
realization.

The predicate `InducedBy` is part of the selected K-theory model.  Requiring a
proof of it records that `kTheoryMap` really comes from the ring homomorphism;
this module does not pretend to construct algebraic K-theory itself.
-/
structure KTheoryFunctoriality
    (A : RepresentationDatum) where
  Source : Int → Type uS
  Target : Int → Type uT
  InducedBy :
    (MonoidAlgebra ℤ A.Group →+* A.NumberRing) →
      ((degree : Int) → Source degree → Target degree) → Prop
  kTheoryMap :
    (degree : Int) → Source degree → Target degree
  induced_by_groupRingMap :
    InducedBy A.groupRingMap kTheoryMap

/--
An arithmetic/etale comparison between objects over explicitly different
coefficient contexts.

The contexts are parameters of the datum, rather than descriptive tags.  In
particular, a comparison ending over a localized or completed context cannot
be silently reused as an endomorphism over its source context.
-/
structure EtaleComparisonDatum
    (R : Comparison.CoefficientContext.{uR})
    (S : Comparison.CoefficientContext.{uP}) where
  prime : Nat
  degree : Int
  coefficientChange : Comparison.CoefficientChange R S
  KTheoryObject : CoefficientObject.{uR, uK} R
  EtaleObject : CoefficientObject.{uP, uE} S
  comparison : KTheoryObject.Carrier → EtaleObject.Carrier
  Hypothesis : Prop
  comparison_bijective :
    Hypothesis → Function.Bijective comparison

end DAF.Arithmetic
