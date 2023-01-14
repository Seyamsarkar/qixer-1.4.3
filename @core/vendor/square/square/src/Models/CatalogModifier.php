<?php

declare(strict_types=1);

namespace Square\Models;

use stdClass;

/**
 * A modifier applicable to items at the time of sale.
 */
class CatalogModifier implements \JsonSerializable
{
    /**
     * @var string|null
     */
    private $name;

    /**
     * @var Money|null
     */
    private $priceMoney;

    /**
     * @var int|null
     */
    private $ordinal;

    /**
     * @var string|null
     */
    private $modifierListId;

    /**
     * @var string[]|null
     */
    private $imageIds;

    /**
     * Returns Name.
     * The modifier name.  This is a searchable attribute for use in applicable query filters, and its
     * value length is of Unicode code points.
     */
    public function getName(): ?string
    {
        return $this->name;
    }

    /**
     * Sets Name.
     * The modifier name.  This is a searchable attribute for use in applicable query filters, and its
     * value length is of Unicode code points.
     *
     * @maps name
     */
    public function setName(?string $name): void
    {
        $this->name = $name;
    }

    /**
     * Returns Price Money.
     * Represents an amount of money. `Money` fields can be signed or unsigned.
     * Fields that do not explicitly define whether they are signed or unsigned are
     * considered unsigned and can only hold positive amounts. For signed fields, the
     * sign of the value indicates the purpose of the money transfer. See
     * [Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-
     * monetary-amounts)
     * for more information.
     */
    public function getPriceMoney(): ?Money
    {
        return $this->priceMoney;
    }

    /**
     * Sets Price Money.
     * Represents an amount of money. `Money` fields can be signed or unsigned.
     * Fields that do not explicitly define whether they are signed or unsigned are
     * considered unsigned and can only hold positive amounts. For signed fields, the
     * sign of the value indicates the purpose of the money transfer. See
     * [Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-
     * monetary-amounts)
     * for more information.
     *
     * @maps price_money
     */
    public function setPriceMoney(?Money $priceMoney): void
    {
        $this->priceMoney = $priceMoney;
    }

    /**
     * Returns Ordinal.
     * Determines where this `CatalogModifier` appears in the `CatalogModifierList`.
     */
    public function getOrdinal(): ?int
    {
        return $this->ordinal;
    }

    /**
     * Sets Ordinal.
     * Determines where this `CatalogModifier` appears in the `CatalogModifierList`.
     *
     * @maps ordinal
     */
    public function setOrdinal(?int $ordinal): void
    {
        $this->ordinal = $ordinal;
    }

    /**
     * Returns Modifier List Id.
     * The ID of the `CatalogModifierList` associated with this modifier.
     */
    public function getModifierListId(): ?string
    {
        return $this->modifierListId;
    }

    /**
     * Sets Modifier List Id.
     * The ID of the `CatalogModifierList` associated with this modifier.
     *
     * @maps modifier_list_id
     */
    public function setModifierListId(?string $modifierListId): void
    {
        $this->modifierListId = $modifierListId;
    }

    /**
     * Returns Image Ids.
     * The IDs of images associated with this `CatalogModifier` instance.
     * Currently these images are not displayed by Square, but are free to be displayed in 3rd party
     * applications.
     *
     * @return string[]|null
     */
    public function getImageIds(): ?array
    {
        return $this->imageIds;
    }

    /**
     * Sets Image Ids.
     * The IDs of images associated with this `CatalogModifier` instance.
     * Currently these images are not displayed by Square, but are free to be displayed in 3rd party
     * applications.
     *
     * @maps image_ids
     *
     * @param string[]|null $imageIds
     */
    public function setImageIds(?array $imageIds): void
    {
        $this->imageIds = $imageIds;
    }

    /**
     * Encode this object to JSON
     *
     * @param bool $asArrayWhenEmpty Whether to serialize this model as an array whenever no fields
     *        are set. (default: false)
     *
     * @return array|stdClass
     */
    #[\ReturnTypeWillChange] // @phan-suppress-current-line PhanUndeclaredClassAttribute for (php < 8.1)
    public function jsonSerialize(bool $asArrayWhenEmpty = false)
    {
        $json = [];
        if (isset($this->name)) {
            $json['name']             = $this->name;
        }
        if (isset($this->priceMoney)) {
            $json['price_money']      = $this->priceMoney;
        }
        if (isset($this->ordinal)) {
            $json['ordinal']          = $this->ordinal;
        }
        if (isset($this->modifierListId)) {
            $json['modifier_list_id'] = $this->modifierListId;
        }
        if (isset($this->imageIds)) {
            $json['image_ids']        = $this->imageIds;
        }
        $json = array_filter($json, function ($val) {
            return $val !== null;
        });

        return (!$asArrayWhenEmpty && empty($json)) ? new stdClass() : $json;
    }
}
