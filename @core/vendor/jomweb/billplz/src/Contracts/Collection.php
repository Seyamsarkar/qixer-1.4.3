<?php

namespace Billplz\Contracts;

use Laravie\Codex\Contracts\Request;
use Laravie\Codex\Contracts\Response;

interface Collection extends Request
{
    /**
     * Create a new collection.
     *
     * @param  array<string, mixed>  $optional
     */
    public function create(string $title, array $optional = []): Response;

    /**
     * Get collection.
     */
    public function get(string $id): Response;

    /**
     * Get collection index.
     *
     * @param  array<string, mixed>  $optional
     */
    public function all(array $optional = []): Response;

    /**
     * Activate a collection.
     */
    public function activate(string $id): Response;

    /**
     * Deactivate a collection.
     */
    public function deactivate(string $id): Response;
}
